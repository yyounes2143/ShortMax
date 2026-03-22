package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.model.WorkSpec;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class ConstraintProxy extends BroadcastReceiver {
    private static final String TAG = Logger.tagWithPrefix("ConstraintProxy");

    /* loaded from: classes2.dex */
    public static class BatteryChargingProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    /* loaded from: classes2.dex */
    public static class BatteryNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    /* loaded from: classes2.dex */
    public static class NetworkStateProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    /* loaded from: classes2.dex */
    public static class StorageNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    ConstraintProxy() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateAll(Context context, List<WorkSpec> list) {
        boolean z10;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        for (WorkSpec workSpec : list) {
            Constraints constraints = workSpec.constraints;
            z11 |= constraints.requiresBatteryNotLow();
            z12 |= constraints.requiresCharging();
            z13 |= constraints.requiresStorageNotLow();
            if (constraints.getRequiredNetworkType() != NetworkType.NOT_REQUIRED) {
                z10 = true;
            } else {
                z10 = false;
            }
            z14 |= z10;
            if (z11 && z12 && z13 && z14) {
                break;
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.newConstraintProxyUpdateIntent(context, z11, z12, z13, z14));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "onReceive : " + intent);
        context.startService(CommandHandler.createConstraintsChangedIntent(context));
    }
}
