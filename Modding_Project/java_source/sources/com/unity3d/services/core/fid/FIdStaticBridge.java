package com.unity3d.services.core.fid;

import android.content.Context;
import com.unity3d.services.core.reflection.GenericBridge;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FIdStaticBridge.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFIdStaticBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FIdStaticBridge.kt\ncom/unity3d/services/core/fid/FIdStaticBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,16:1\n1#2:17\n*E\n"})
/* loaded from: classes7.dex */
public final class FIdStaticBridge extends GenericBridge {
    public FIdStaticBridge() {
        super(p0.f(new Pair(Constants.GET_INSTANCE, new Class[]{Context.class})), false);
    }

    @Override // com.unity3d.services.core.reflection.GenericBridge
    @NotNull
    protected String getClassName() {
        return Constants.Companion.getClassName();
    }

    @Nullable
    public final FIdBridge getInstance(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object callNonVoidMethod = callNonVoidMethod(Constants.GET_INSTANCE, null, context);
        if (callNonVoidMethod == null) {
            return null;
        }
        return new FIdBridge(callNonVoidMethod);
    }
}
