package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import c5.p;
import c5.u;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
/* loaded from: classes4.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY)).intValue();
        int i10 = intent.getExtras().getInt("attemptNumber");
        u.f(context);
        p.a d10 = p.a().b(queryParameter).d(n5.a.b(intValue));
        if (queryParameter2 != null) {
            d10.c(Base64.decode(queryParameter2, 0));
        }
        u.c().e().v(d10.a(), i10, new Runnable() { // from class: j5.a
            @Override // java.lang.Runnable
            public final void run() {
                AlarmManagerSchedulerBroadcastReceiver.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b() {
    }
}
