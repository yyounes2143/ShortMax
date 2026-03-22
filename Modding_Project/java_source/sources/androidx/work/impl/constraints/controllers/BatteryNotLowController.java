package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContraintControllers.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BatteryNotLowController extends ConstraintController<Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryNotLowController(@NotNull BatteryNotLowTracker tracker) {
        super(tracker);
        Intrinsics.checkNotNullParameter(tracker, "tracker");
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(@NotNull WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.constraints.requiresBatteryNotLow();
    }

    public boolean isConstrained(boolean z10) {
        return !z10;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public /* bridge */ /* synthetic */ boolean isConstrained(Boolean bool) {
        return isConstrained(bool.booleanValue());
    }
}
