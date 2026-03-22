package androidx.work.impl.constraints;

import androidx.annotation.VisibleForTesting;
import androidx.work.Logger;
import androidx.work.impl.constraints.controllers.BatteryChargingController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkConnectedController;
import androidx.work.impl.constraints.controllers.NetworkMeteredController;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingController;
import androidx.work.impl.constraints.controllers.NetworkUnmeteredController;
import androidx.work.impl.constraints.controllers.StorageNotLowController;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WorkConstraintsTracker.kt */
@Metadata
/* loaded from: classes2.dex */
public final class WorkConstraintsTrackerImpl implements WorkConstraintsTracker, ConstraintController.OnConstraintUpdatedCallback {
    @Nullable
    private final WorkConstraintsCallback callback;
    @NotNull
    private final ConstraintController<?>[] constraintControllers;
    @NotNull
    private final Object lock;

    @VisibleForTesting
    public WorkConstraintsTrackerImpl(@Nullable WorkConstraintsCallback workConstraintsCallback, @NotNull ConstraintController<?>[] constraintControllers) {
        Intrinsics.checkNotNullParameter(constraintControllers, "constraintControllers");
        this.callback = workConstraintsCallback;
        this.constraintControllers = constraintControllers;
        this.lock = new Object();
    }

    public final boolean areAllConstraintsMet(@NotNull String workSpecId) {
        boolean z10;
        ConstraintController<?> constraintController;
        String str;
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        synchronized (this.lock) {
            try {
                ConstraintController<?>[] constraintControllerArr = this.constraintControllers;
                int length = constraintControllerArr.length;
                z10 = false;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        constraintController = constraintControllerArr[i10];
                        if (constraintController.isWorkSpecConstrained(workSpecId)) {
                            break;
                        }
                        i10++;
                    } else {
                        constraintController = null;
                        break;
                    }
                }
                if (constraintController != null) {
                    Logger logger = Logger.get();
                    str = WorkConstraintsTrackerKt.TAG;
                    logger.debug(str, "Work " + workSpecId + " constrained by " + constraintController.getClass().getSimpleName());
                }
                if (constraintController == null) {
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public void onConstraintMet(@NotNull List<WorkSpec> workSpecs) {
        String str;
        Intrinsics.checkNotNullParameter(workSpecs, "workSpecs");
        synchronized (this.lock) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj : workSpecs) {
                    if (areAllConstraintsMet(((WorkSpec) obj).f1724id)) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Logger logger = Logger.get();
                    str = WorkConstraintsTrackerKt.TAG;
                    logger.debug(str, "Constraints met for " + ((WorkSpec) it.next()));
                }
                WorkConstraintsCallback workConstraintsCallback = this.callback;
                if (workConstraintsCallback != null) {
                    workConstraintsCallback.onAllConstraintsMet(arrayList);
                    Unit unit = Unit.f60915a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public void onConstraintNotMet(@NotNull List<WorkSpec> workSpecs) {
        Intrinsics.checkNotNullParameter(workSpecs, "workSpecs");
        synchronized (this.lock) {
            WorkConstraintsCallback workConstraintsCallback = this.callback;
            if (workConstraintsCallback != null) {
                workConstraintsCallback.onAllConstraintsNotMet(workSpecs);
                Unit unit = Unit.f60915a;
            }
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsTracker
    public void replace(@NotNull Iterable<WorkSpec> workSpecs) {
        Intrinsics.checkNotNullParameter(workSpecs, "workSpecs");
        synchronized (this.lock) {
            try {
                for (ConstraintController<?> constraintController : this.constraintControllers) {
                    constraintController.setCallback(null);
                }
                for (ConstraintController<?> constraintController2 : this.constraintControllers) {
                    constraintController2.replace(workSpecs);
                }
                for (ConstraintController<?> constraintController3 : this.constraintControllers) {
                    constraintController3.setCallback(this);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsTracker
    public void reset() {
        synchronized (this.lock) {
            try {
                for (ConstraintController<?> constraintController : this.constraintControllers) {
                    constraintController.reset();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTrackerImpl(@NotNull Trackers trackers, @Nullable WorkConstraintsCallback workConstraintsCallback) {
        this(workConstraintsCallback, new ConstraintController[]{new BatteryChargingController(trackers.getBatteryChargingTracker()), new BatteryNotLowController(trackers.getBatteryNotLowTracker()), new StorageNotLowController(trackers.getStorageNotLowTracker()), new NetworkConnectedController(trackers.getNetworkStateTracker()), new NetworkUnmeteredController(trackers.getNetworkStateTracker()), new NetworkNotRoamingController(trackers.getNetworkStateTracker()), new NetworkMeteredController(trackers.getNetworkStateTracker())});
        Intrinsics.checkNotNullParameter(trackers, "trackers");
    }
}
