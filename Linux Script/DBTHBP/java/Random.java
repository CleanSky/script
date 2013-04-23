import java.io.*;

public class Random {
	public static void main(String[] args) throws IOException {
		final int NN1 = 10;
		final int NN2 = 20;
		final int NN3 = 30;
		final int NN4 = 40;
		final int NN5 = 50;
		final int NN10 = 100;
		final int counts = 30;
		double number = 0;
		String s = null;

		// 10个节点
		File f100 = new File(
				"../random_initial_data/nodes_10nodes.txt");
		File f101 = new File(
				"../random_initial_data/location_10nodes.txt");
		File f102 = new File(
				"../random_initial_data/speed_10nodes.txt");

		BufferedWriter output100 = new BufferedWriter(new FileWriter(f100));
		BufferedWriter output101 = new BufferedWriter(new FileWriter(f101));
		BufferedWriter output102 = new BufferedWriter(new FileWriter(f102));

		if (!f100.exists()) {
			f100.createNewFile();
		}
		if (!f101.exists()) {
			f101.createNewFile();
		}
		if (!f102.exists()) {
			f102.createNewFile();
		}

		// 20个节点
		File f200 = new File(
				"../random_initial_data/nodes_20nodes.txt");
		File f201 = new File(
				"../random_initial_data/location_20nodes.txt");
		File f202 = new File(
				"../random_initial_data/speed_20nodes.txt");

		BufferedWriter output200 = new BufferedWriter(new FileWriter(f200));
		BufferedWriter output201 = new BufferedWriter(new FileWriter(f201));
		BufferedWriter output202 = new BufferedWriter(new FileWriter(f202));

		if (!f200.exists()) {
			f200.createNewFile();
		}
		if (!f201.exists()) {
			f201.createNewFile();
		}
		if (!f202.exists()) {
			f202.createNewFile();
		}

		// 30个节点
		File f300 = new File(
				"../random_initial_data/nodes_30nodes.txt");
		File f301 = new File(
				"../random_initial_data/location_30nodes.txt");
		File f302 = new File(
				"../random_initial_data/speed_30nodes.txt");

		BufferedWriter output300 = new BufferedWriter(new FileWriter(f300));
		BufferedWriter output301 = new BufferedWriter(new FileWriter(f301));
		BufferedWriter output302 = new BufferedWriter(new FileWriter(f302));

		if (!f300.exists()) {
			f300.createNewFile();
		}
		if (!f301.exists()) {
			f301.createNewFile();
		}
		if (!f302.exists()) {
			f302.createNewFile();
		}

		// 40个节点
		File f400 = new File(
				"../random_initial_data/nodes_40nodes.txt");
		File f401 = new File(
				"../random_initial_data/location_40nodes.txt");
		File f402 = new File(
				"../random_initial_data/speed_40nodes.txt");

		BufferedWriter output400 = new BufferedWriter(new FileWriter(f400));
		BufferedWriter output401 = new BufferedWriter(new FileWriter(f401));
		BufferedWriter output402 = new BufferedWriter(new FileWriter(f402));

		if (!f400.exists()) {
			f400.createNewFile();
		}
		if (!f401.exists()) {
			f401.createNewFile();
		}
		if (!f402.exists()) {
			f402.createNewFile();
		}

		// 50个节点
		File f500 = new File(
				"../random_initial_data/nodes_50nodes.txt");
		File f501 = new File(
				"../random_initial_data/location_50nodes.txt");
		File f502 = new File(
				"../random_initial_data/speed_50nodes.txt");

		BufferedWriter output500 = new BufferedWriter(new FileWriter(f500));
		BufferedWriter output501 = new BufferedWriter(new FileWriter(f501));
		BufferedWriter output502 = new BufferedWriter(new FileWriter(f502));

		if (!f500.exists()) {
			f500.createNewFile();
		}
		if (!f501.exists()) {
			f501.createNewFile();
		}
		if (!f502.exists()) {
			f502.createNewFile();
		}

		// 100个节点
		File f1000 = new File(
				"../random_initial_data/nodes_100nodes.txt");
		File f1001 = new File(
				"../random_initial_data/location_100nodes.txt");
		File f1002 = new File(
				"../random_initial_data/speed_100nodes.txt");

		BufferedWriter output1000 = new BufferedWriter(new FileWriter(f1000));
		BufferedWriter output1001 = new BufferedWriter(new FileWriter(f1001));
		BufferedWriter output1002 = new BufferedWriter(new FileWriter(f1002));

		if (!f1000.exists()) {
			f1000.createNewFile();
		}
		if (!f1001.exists()) {
			f1001.createNewFile();
		}
		if (!f1002.exists()) {
			f1002.createNewFile();
		}

		// 10个节点
		s = "set vehicle_(0) [$ns_ node]\n";
		s += "$vehicle_(0) set id_ 0\n";
		s += "$vehicle_(0) set address_ 0\n";
		s += "$vehicle_(0) set nodeid 0\n\n";
		System.out.println(s);
		output100.write(s);

		number = 5.0;
		s = "set X_(0) " + number + "\n";
		s += "$vehicle_(0) set X_  $X_(0)" + "\n";
		s += "$vehicle_(0) set Y_ 10.0" + "\n";
		s += "$vehicle_(0) set Z_ 0.0" + "\n\n";
		System.out.println(s);
		output101.write(s);

		number = 12;
		s = "set V_(0) " + number + "\n";
		s += "$vehicle_(0) setdest [expr $val(x)-1] 10.0 $V_(0)" + "\n";
		System.out.println(s);
		output102.write(s);

		for (int i = 1; i < NN1 * counts; i++) {
			s = "set vehicle_(" + i + ") [$ns_ node]\n";
			s += "$vehicle_(" + i + ") set id_ " + i + "\n";
			s += "$vehicle_(" + i + ") set address_ " + i + "\n";
			s += "$vehicle_(" + i + ") set nodeid " + i + "\n\n";
			System.out.println(s);
			output100.write(s);
		}

		for (int i = 1; i < NN1 * counts; i++) {
			number = Math.random() * 300 + (int) (i / NN1) * 300;
			s = "set X_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") set X_  $X_(" + i + ")" + "\n";
			s += "$vehicle_(" + i + ") set Y_ 10.0" + "\n";
			s += "$vehicle_(" + i + ") set Z_ 0.0" + "\n\n";
			System.out.println(s);
			output101.write(s);
		}

		for (int i = 1; i < NN1 * counts; i++) {
			number = Math.random() * 20;

			s = "set V_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") setdest [expr $val(x)-1] 10.0 $V_(" + i
					+ ")" + "\n";
			System.out.println(s);
			output102.write(s);
		}

		// 20个节点
		s = "set vehicle_(0) [$ns_ node]\n";
		s += "$vehicle_(0) set id_ 0\n";
		s += "$vehicle_(0) set address_ 0\n";
		s += "$vehicle_(0) set nodeid 0\n\n";
		System.out.println(s);
		output200.write(s);

		number = 5.0;
		s = "set X_(0) " + number + "\n";
		s += "$vehicle_(0) set X_  $X_(0)" + "\n";
		s += "$vehicle_(0) set Y_ 10.0" + "\n";
		s += "$vehicle_(0) set Z_ 0.0" + "\n\n";
		System.out.println(s);
		output201.write(s);

		number = 12;
		s = "set V_(0) " + number + "\n";
		s += "$vehicle_(0) setdest [expr $val(x)-1] 10.0 $V_(0)" + "\n";
		System.out.println(s);
		output202.write(s);

		for (int i = 1; i < NN2 * counts; i++) {
			s = "set vehicle_(" + i + ") [$ns_ node]\n";
			s += "$vehicle_(" + i + ") set id_ " + i + "\n";
			s += "$vehicle_(" + i + ") set address_ " + i + "\n";
			s += "$vehicle_(" + i + ") set nodeid " + i + "\n\n";
			System.out.println(s);
			output200.write(s);
		}

		for (int i = 1; i < NN2 * counts; i++) {
			number = Math.random() * 300 + (int) (i / NN2) * 300;
			s = "set X_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") set X_  $X_(" + i + ")" + "\n";
			s += "$vehicle_(" + i + ") set Y_ 10.0" + "\n";
			s += "$vehicle_(" + i + ") set Z_ 0.0" + "\n\n";
			System.out.println(s);
			output201.write(s);
		}

		for (int i = 1; i < NN2 * counts; i++) {
			number = Math.random() * 20;

			s = "set V_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") setdest [expr $val(x)-1] 10.0 $V_(" + i
					+ ")" + "\n";
			System.out.println(s);
			output202.write(s);
		}

		// 30个节点
		s = "set vehicle_(0) [$ns_ node]\n";
		s += "$vehicle_(0) set id_ 0\n";
		s += "$vehicle_(0) set address_ 0\n";
		s += "$vehicle_(0) set nodeid 0\n\n";
		System.out.println(s);
		output300.write(s);

		number = 5.0;
		s = "set X_(0) " + number + "\n";
		s += "$vehicle_(0) set X_  $X_(0)" + "\n";
		s += "$vehicle_(0) set Y_ 10.0" + "\n";
		s += "$vehicle_(0) set Z_ 0.0" + "\n\n";
		System.out.println(s);
		output301.write(s);

		number = 12;
		s = "set V_(0) " + number + "\n";
		s += "$vehicle_(0) setdest [expr $val(x)-1] 10.0 $V_(0)" + "\n";
		System.out.println(s);
		output302.write(s);

		for (int i = 1; i < NN3 * counts; i++) {
			s = "set vehicle_(" + i + ") [$ns_ node]\n";
			s += "$vehicle_(" + i + ") set id_ " + i + "\n";
			s += "$vehicle_(" + i + ") set address_ " + i + "\n";
			s += "$vehicle_(" + i + ") set nodeid " + i + "\n\n";
			System.out.println(s);
			output300.write(s);
		}

		for (int i = 1; i < NN3 * counts; i++) {
			number = Math.random() * 300 + (int) (i / NN3) * 300;
			s = "set X_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") set X_  $X_(" + i + ")" + "\n";
			s += "$vehicle_(" + i + ") set Y_ 10.0" + "\n";
			s += "$vehicle_(" + i + ") set Z_ 0.0" + "\n\n";
			System.out.println(s);
			output301.write(s);
		}

		for (int i = 1; i < NN3 * counts; i++) {
			number = Math.random() * 20;

			s = "set V_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") setdest [expr $val(x)-1] 10.0 $V_(" + i
					+ ")" + "\n";
			System.out.println(s);
			output302.write(s);
		}

		// 40个节点
		s = "set vehicle_(0) [$ns_ node]\n";
		s += "$vehicle_(0) set id_ 0\n";
		s += "$vehicle_(0) set address_ 0\n";
		s += "$vehicle_(0) set nodeid 0\n\n";
		System.out.println(s);
		output400.write(s);

		number = 5.0;
		s = "set X_(0) " + number + "\n";
		s += "$vehicle_(0) set X_  $X_(0)" + "\n";
		s += "$vehicle_(0) set Y_ 10.0" + "\n";
		s += "$vehicle_(0) set Z_ 0.0" + "\n\n";
		System.out.println(s);
		output401.write(s);

		number = 12;
		s = "set V_(0) " + number + "\n";
		s += "$vehicle_(0) setdest [expr $val(x)-1] 10.0 $V_(0)" + "\n";
		System.out.println(s);
		output402.write(s);

		for (int i = 1; i < NN4 * counts; i++) {
			s = "set vehicle_(" + i + ") [$ns_ node]\n";
			s += "$vehicle_(" + i + ") set id_ " + i + "\n";
			s += "$vehicle_(" + i + ") set address_ " + i + "\n";
			s += "$vehicle_(" + i + ") set nodeid " + i + "\n\n";
			System.out.println(s);
			output400.write(s);
		}

		for (int i = 1; i < NN4 * counts; i++) {
			number = Math.random() * 300 + (int) (i / NN4) * 300;
			s = "set X_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") set X_  $X_(" + i + ")" + "\n";
			s += "$vehicle_(" + i + ") set Y_ 10.0" + "\n";
			s += "$vehicle_(" + i + ") set Z_ 0.0" + "\n\n";
			System.out.println(s);
			output401.write(s);
		}

		for (int i = 1; i < NN4 * counts; i++) {
			number = Math.random() * 20;

			s = "set V_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") setdest [expr $val(x)-1] 10.0 $V_(" + i
					+ ")" + "\n";
			System.out.println(s);
			output402.write(s);
		}

		// 50个节点
		s = "set vehicle_(0) [$ns_ node]\n";
		s += "$vehicle_(0) set id_ 0\n";
		s += "$vehicle_(0) set address_ 0\n";
		s += "$vehicle_(0) set nodeid 0\n\n";
		System.out.println(s);
		output500.write(s);

		number = 5.0;
		s = "set X_(0) " + number + "\n";
		s += "$vehicle_(0) set X_  $X_(0)" + "\n";
		s += "$vehicle_(0) set Y_ 10.0" + "\n";
		s += "$vehicle_(0) set Z_ 0.0" + "\n\n";
		System.out.println(s);
		output501.write(s);

		number = 12;
		s = "set V_(0) " + number + "\n";
		s += "$vehicle_(0) setdest [expr $val(x)-1] 10.0 $V_(0)" + "\n";
		System.out.println(s);
		output502.write(s);

		for (int i = 1; i < NN5 * counts; i++) {
			s = "set vehicle_(" + i + ") [$ns_ node]\n";
			s += "$vehicle_(" + i + ") set id_ " + i + "\n";
			s += "$vehicle_(" + i + ") set address_ " + i + "\n";
			s += "$vehicle_(" + i + ") set nodeid " + i + "\n\n";
			System.out.println(s);
			output500.write(s);
		}

		for (int i = 1; i < NN5 * counts; i++) {
			number = Math.random() * 300 + (int) (i / NN5) * 300;
			s = "set X_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") set X_  $X_(" + i + ")" + "\n";
			s += "$vehicle_(" + i + ") set Y_ 10.0" + "\n";
			s += "$vehicle_(" + i + ") set Z_ 0.0" + "\n\n";
			System.out.println(s);
			output501.write(s);
		}

		for (int i = 1; i < NN5 * counts; i++) {
			number = Math.random() * 20;

			s = "set V_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") setdest [expr $val(x)-1] 10.0 $V_(" + i
					+ ")" + "\n";
			System.out.println(s);
			output502.write(s);
		}

		// 100个节点
		s = "set vehicle_(0) [$ns_ node]\n";
		s += "$vehicle_(0) set id_ 0\n";
		s += "$vehicle_(0) set address_ 0\n";
		s += "$vehicle_(0) set nodeid 0\n\n";
		System.out.println(s);
		output1000.write(s);

		number = 5.0;
		s = "set X_(0) " + number + "\n";
		s += "$vehicle_(0) set X_  $X_(0)" + "\n";
		s += "$vehicle_(0) set Y_ 10.0" + "\n";
		s += "$vehicle_(0) set Z_ 0.0" + "\n\n";
		System.out.println(s);
		output1001.write(s);

		number = 12;
		s = "set V_(0) " + number + "\n";
		s += "$vehicle_(0) setdest [expr $val(x)-1] 10.0 $V_(0)" + "\n";
		System.out.println(s);
		output1002.write(s);

		for (int i = 1; i < NN10 * counts; i++) {
			s = "set vehicle_(" + i + ") [$ns_ node]\n";
			s += "$vehicle_(" + i + ") set id_ " + i + "\n";
			s += "$vehicle_(" + i + ") set address_ " + i + "\n";
			s += "$vehicle_(" + i + ") set nodeid " + i + "\n\n";
			System.out.println(s);
			output1000.write(s);
		}

		for (int i = 1; i < NN10 * counts; i++) {
			number = Math.random() * 300 + (int) (i / NN10) * 300;
			s = "set X_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") set X_  $X_(" + i + ")" + "\n";
			s += "$vehicle_(" + i + ") set Y_ 10.0" + "\n";
			s += "$vehicle_(" + i + ") set Z_ 0.0" + "\n\n";
			System.out.println(s);
			output1001.write(s);
		}

		for (int i = 1; i < NN10 * counts; i++) {
			number = Math.random() * 20;

			s = "set V_(" + i + ") " + number + "\n";
			s += "$vehicle_(" + i + ") setdest [expr $val(x)-1] 10.0 $V_(" + i
					+ ")" + "\n";
			System.out.println(s);
			output1002.write(s);
		}

		output100.close();
		output101.close();
		output102.close();
		output200.close();
		output201.close();
		output202.close();
		output300.close();
		output301.close();
		output302.close();
		output400.close();
		output401.close();
		output402.close();
		output500.close();
		output501.close();
		output502.close();
		output1000.close();
		output1001.close();
		output1002.close();
	}
}
