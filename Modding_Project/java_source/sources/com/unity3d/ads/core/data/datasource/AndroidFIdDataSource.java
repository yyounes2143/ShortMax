package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.unity3d.services.core.fid.FIdBridge;
import com.unity3d.services.core.fid.FIdStaticBridge;
import gt.f;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidFIdDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidFIdDataSource implements FIdDataSource {
    @NotNull
    private FIdStaticBridge bridge;
    @NotNull
    private final Context context;

    public AndroidFIdDataSource(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.bridge = new FIdStaticBridge();
    }

    @Override // com.unity3d.ads.core.data.datasource.FIdDataSource
    @Nullable
    public String invoke() {
        Task<String> appInstanceId;
        Object b10;
        String str = null;
        try {
            Result.a aVar = Result.f60901b;
            FIdBridge fIdStaticBridge = this.bridge.getInstance(this.context);
            if (fIdStaticBridge != null && (appInstanceId = fIdStaticBridge.getAppInstanceId()) != null) {
                b10 = f.b(null, new AndroidFIdDataSource$invoke$1$1(appInstanceId, null), 1, null);
                return (String) b10;
            }
            return null;
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            Object d10 = Result.d(kotlin.f.a(th2));
            if (!Result.i(d10)) {
                str = d10;
            }
            return str;
        }
    }
}
