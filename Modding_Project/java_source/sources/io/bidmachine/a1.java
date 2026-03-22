package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.protobuf.sdk.App;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppParams.java */
/* loaded from: classes7.dex */
public final class a1 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final b1 f53594a;

    public a1(@NonNull b1 b1Var) {
        this.f53594a = b1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Context context, @NonNull Context.App.Builder builder) {
        String packageName = context.getPackageName();
        if (!TextUtils.isEmpty(packageName)) {
            builder.setBundle(packageName);
        }
        String u10 = io.bidmachine.core.g.u(context);
        if (!TextUtils.isEmpty(u10)) {
            builder.setVer(u10);
        }
        String t10 = io.bidmachine.core.g.t(context);
        if (!TextUtils.isEmpty(t10)) {
            builder.setName(t10);
        }
        this.f53594a.a(context, builder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull android.content.Context context, @NonNull App.Builder builder) {
        String u10 = io.bidmachine.core.g.u(context);
        if (!TextUtils.isEmpty(u10)) {
            builder.setAppVer(u10);
        }
        String t10 = io.bidmachine.core.g.t(context);
        if (!TextUtils.isEmpty(t10)) {
            builder.setAppName(t10);
        }
        builder.setInstallTime(fr.e.o(i4.c()));
        builder.setFirstLaunchTime(fr.e.o(j2.e().J(context)));
        this.f53594a.b(context, builder);
    }
}
