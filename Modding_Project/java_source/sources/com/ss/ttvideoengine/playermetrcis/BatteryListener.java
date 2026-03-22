package com.ss.ttvideoengine.playermetrcis;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class BatteryListener {
    private BatteryStateListener mBatteryStateListener;
    private Context mContext;
    private boolean mInitialState;
    private BatteryBroadcastReceiver receiver = new BatteryBroadcastReceiver();

    /* loaded from: classes6.dex */
    private class BatteryBroadcastReceiver extends BroadcastReceiver {
        private BatteryBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                action.hashCode();
                if (!action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                    if (action.equals("android.intent.action.ACTION_POWER_CONNECTED") && BatteryListener.this.mBatteryStateListener != null) {
                        BatteryListener.this.mBatteryStateListener.onStatePowerConnected();
                    }
                } else if (BatteryListener.this.mBatteryStateListener != null) {
                    BatteryListener.this.mBatteryStateListener.onStatePowerDisconnected();
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface BatteryStateListener {
        void onStatePowerConnected();

        void onStatePowerDisconnected();
    }

    public BatteryListener(Context context) {
        this.mContext = context;
    }

    public boolean getInitialCharging() {
        return this.mInitialState;
    }

    public void register(BatteryStateListener batteryStateListener) {
        boolean z10;
        this.mBatteryStateListener = batteryStateListener;
        if (this.mContext != null && this.receiver != null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
            Intent registerReceiver = this.mContext.registerReceiver(this.receiver, intentFilter);
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra("plugged", -1);
                TTVideoEngineLog.i("BatteryListener", "BatteryListener state: " + intExtra);
                if (intExtra == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.mInitialState = z10;
            }
        }
    }

    public void unregister() {
        BatteryBroadcastReceiver batteryBroadcastReceiver = this.receiver;
        if (batteryBroadcastReceiver != null) {
            this.mContext.unregisterReceiver(batteryBroadcastReceiver);
        }
    }
}
