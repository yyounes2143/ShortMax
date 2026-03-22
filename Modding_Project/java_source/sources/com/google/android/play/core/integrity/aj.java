package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.integrity.internal.i0;
import com.google.android.play.integrity.internal.o0;
import com.google.android.play.integrity.internal.v0;
import java.util.ArrayList;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class aj {
    @Nullable
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.play.integrity.internal.f f19846a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f19847b;

    /* renamed from: c  reason: collision with root package name */
    private final String f19848c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f19849d;

    /* renamed from: e  reason: collision with root package name */
    private final at f19850e;

    /* renamed from: f  reason: collision with root package name */
    private final k f19851f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(Context context, o0 o0Var, at atVar, k kVar) {
        this.f19848c = context.getPackageName();
        this.f19847b = o0Var;
        this.f19850e = atVar;
        this.f19851f = kVar;
        this.f19849d = context;
        if (!com.google.android.play.integrity.internal.i.b(context)) {
            o0Var.b("Phonesky is not installed.", new Object[0]);
            this.f19846a = null;
            return;
        }
        this.f19846a = new com.google.android.play.integrity.internal.f(context, o0Var, "IntegrityService", ak.f19852a, new v0() { // from class: com.google.android.play.core.integrity.ae
            @Override // com.google.android.play.integrity.internal.v0
            public final Object a(IBinder iBinder) {
                return i0.i(iBinder);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle a(aj ajVar, byte[] bArr, Long l10, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", ajVar.f19848c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l10 != null) {
            bundle.putLong("cloud.prj", l10.longValue());
        }
        if (parcelable != null) {
            bundle.putParcelable("network", parcelable);
        }
        ArrayList arrayList = new ArrayList();
        com.google.android.play.integrity.internal.z.b(3, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(com.google.android.play.integrity.internal.z.a(arrayList)));
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final Task b(Activity activity, Bundle bundle) {
        if (this.f19846a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, null));
        }
        int i10 = bundle.getInt("dialog.intent.type");
        this.f19847b.d("requestAndShowDialog(%s, %s)", this.f19848c, Integer.valueOf(i10));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f19846a.t(new ag(this, taskCompletionSource, bundle, activity, taskCompletionSource, i10), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task c(IntegrityTokenRequest integrityTokenRequest) {
        if (this.f19846a != null) {
            if (com.google.android.play.integrity.internal.i.a(this.f19849d) >= 82380000) {
                try {
                    byte[] decode = Base64.decode(integrityTokenRequest.nonce(), 10);
                    Long cloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
                    if (integrityTokenRequest instanceof ao) {
                        ao aoVar = (ao) integrityTokenRequest;
                    }
                    this.f19847b.d("requestIntegrityToken(%s)", integrityTokenRequest);
                    TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                    this.f19846a.t(new af(this, taskCompletionSource, decode, cloudProjectNumber, null, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
                    return taskCompletionSource.getTask();
                } catch (IllegalArgumentException e10) {
                    return Tasks.forException(new IntegrityServiceException(-13, e10));
                }
            }
            return Tasks.forException(new IntegrityServiceException(-14, null));
        }
        return Tasks.forException(new IntegrityServiceException(-2, null));
    }
}
