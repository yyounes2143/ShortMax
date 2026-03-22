package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.d0;
import com.google.android.play.integrity.internal.o0;
import com.google.android.play.integrity.internal.v0;
import java.util.ArrayList;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class bn {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.play.integrity.internal.f f19908a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f19909b;

    /* renamed from: c  reason: collision with root package name */
    private final String f19910c;

    /* renamed from: d  reason: collision with root package name */
    private final TaskCompletionSource f19911d;

    /* renamed from: e  reason: collision with root package name */
    private final at f19912e;

    /* renamed from: f  reason: collision with root package name */
    private final k f19913f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(Context context, o0 o0Var, at atVar, k kVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f19911d = taskCompletionSource;
        this.f19910c = context.getPackageName();
        this.f19909b = o0Var;
        this.f19912e = atVar;
        this.f19913f = kVar;
        com.google.android.play.integrity.internal.f fVar = new com.google.android.play.integrity.internal.f(context, o0Var, "ExpressIntegrityService", bo.f19914a, new v0() { // from class: com.google.android.play.core.integrity.bd
            @Override // com.google.android.play.integrity.internal.v0
            public final Object a(IBinder iBinder) {
                return d0.i(iBinder);
            }
        }, null);
        this.f19908a = fVar;
        fVar.c().post(new be(this, taskCompletionSource, context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle a(bn bnVar, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j10, long j11, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.f19910c);
        bundle.putLong("cloud.prj", j10);
        bundle.putString("nonce", standardIntegrityTokenRequest.requestHash());
        bundle.putLong("warm.up.sid", j11);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        bundle.putIntegerArrayList("request.verdict.opt.out", new ArrayList<>(standardIntegrityTokenRequest.verdictOptOut()));
        ArrayList arrayList = new ArrayList();
        com.google.android.play.integrity.internal.z.b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(com.google.android.play.integrity.internal.z.a(arrayList)));
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle b(bn bnVar, long j10, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.f19910c);
        bundle.putLong("cloud.prj", j10);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        ArrayList arrayList = new ArrayList();
        com.google.android.play.integrity.internal.z.b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(com.google.android.play.integrity.internal.z.a(arrayList)));
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean k(bn bnVar, int i10) {
        if (bnVar.f19911d.getTask().isSuccessful() && ((Integer) bnVar.f19911d.getTask().getResult()).intValue() < 83420000) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean l(bn bnVar) {
        if (bnVar.f19911d.getTask().isSuccessful() && ((Integer) bnVar.f19911d.getTask().getResult()).intValue() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final Task c(Activity activity, Bundle bundle) {
        int i10 = bundle.getInt("dialog.intent.type");
        this.f19909b.d("requestAndShowDialog(%s)", Integer.valueOf(i10));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f19908a.t(new bh(this, taskCompletionSource, bundle, activity, taskCompletionSource, i10), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task d(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j10, long j11, int i10) {
        this.f19909b.d("requestExpressIntegrityToken(%s)", Long.valueOf(j11));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f19908a.t(new bg(this, taskCompletionSource, 0, standardIntegrityTokenRequest, j10, j11, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task e(long j10, int i10) {
        this.f19909b.d("warmUpIntegrityToken(%s)", Long.valueOf(j10));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f19908a.t(new bf(this, taskCompletionSource, 0, j10, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
