package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.sdk.l;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
/* loaded from: classes2.dex */
public abstract class g1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements OnSuccessListener {
        a() {
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        /* renamed from: a */
        public void onSuccess(AppSetIdInfo appSetIdInfo) {
            com.applovin.impl.sdk.l.a(new l.b(appSetIdInfo.getId(), appSetIdInfo.getScope()));
        }
    }

    public static void a(final Context context) {
        new Thread(new Runnable() { // from class: com.applovin.impl.ca
            @Override // java.lang.Runnable
            public final void run() {
                g1.b(context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Context context) {
        com.applovin.impl.sdk.l.a(v.b(context));
        if (!k7.a("com.google.android.gms.appset.AppSet")) {
            return;
        }
        try {
            AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new a());
        } catch (Throwable unused) {
        }
    }
}
