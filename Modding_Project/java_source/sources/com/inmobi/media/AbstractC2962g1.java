package com.inmobi.media;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.inmobi.media.AbstractC2962g1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
/* renamed from: com.inmobi.media.g1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC2962g1 {

    /* renamed from: a  reason: collision with root package name */
    public static AppSetIdInfo f24753a;

    static {
        b();
    }

    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static void b() {
        Context d10 = Uc.d();
        if (d10 == null || !a()) {
            return;
        }
        AppSetIdClient client = AppSet.getClient(d10);
        Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
        Task<AppSetIdInfo> appSetIdInfo = client.getAppSetIdInfo();
        Intrinsics.checkNotNullExpressionValue(appSetIdInfo, "getAppSetIdInfo(...)");
        final C2946f1 c2946f1 = C2946f1.f24721a;
        appSetIdInfo.addOnSuccessListener(new OnSuccessListener() { // from class: ub.k4
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                AbstractC2962g1.a(Function1.this, obj);
            }
        });
    }

    public static boolean a() {
        try {
            Reflection.getOrCreateKotlinClass(AppSetIdInfo.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(Task.class).getSimpleName();
            return true;
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }
}
