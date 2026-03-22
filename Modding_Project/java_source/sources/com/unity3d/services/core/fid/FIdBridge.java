package com.unity3d.services.core.fid;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.unity3d.services.core.reflection.GenericBridge;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FIdBridge.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FIdBridge extends GenericBridge {
    @NotNull
    private final Object instance;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FIdBridge(@NotNull Object instance) {
        super(p0.f(new Pair(Constants.GET_APP_INSTANCE_ID, new Class[0])), false);
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.instance = instance;
    }

    @NotNull
    public final Task<String> getAppInstanceId() {
        Task<String> task = (Task) callNonVoidMethod(Constants.GET_APP_INSTANCE_ID, this.instance, new Object[0]);
        if (task == null) {
            Task<String> forResult = Tasks.forResult(null);
            Intrinsics.checkNotNullExpressionValue(forResult, "forResult(null)");
            return forResult;
        }
        return task;
    }

    @Override // com.unity3d.services.core.reflection.GenericBridge
    @NotNull
    protected String getClassName() {
        return Constants.Companion.getClassName();
    }
}
