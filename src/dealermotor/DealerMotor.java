package dealermotor;

import view.FromUtama;

public class DealerMotor {

    public static void main(String[] args) {

        java.awt.EventQueue.invokeLater(() -> {
            new FromUtama().setVisible(true);
        });

    }
}