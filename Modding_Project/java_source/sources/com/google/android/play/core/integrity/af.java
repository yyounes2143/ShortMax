package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.j0;
import com.google.android.play.integrity.internal.o0;
import com.google.android.play.integrity.internal.p0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class af extends p0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ byte[] f19831a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Long f19832b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Parcelable f19833c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f19834d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ IntegrityTokenRequest f19835e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ aj f19836f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(aj ajVar, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l10, Parcelable parcelable, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.f19831a = bArr;
        this.f19832b = l10;
        this.f19833c = parcelable;
        this.f19834d = taskCompletionSource2;
        this.f19835e = integrityTokenRequest;
        this.f19836f = ajVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    public final void a(Exception exc) {
        if (exc instanceof com.google.android.play.integrity.internal.af) {
            super.a(new IntegrityServiceException(-9, exc));
        } else {
            super.a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.p0
    protected final void b() {
        o0 o0Var;
        try {
            ((j0) this.f19836f.f19846a.e()).f(aj.a(this.f19836f, this.f19831a, this.f19832b, this.f19833c), new ai(this.f19836f, this.f19834d));
        } catch (RemoteException e10) {
            aj ajVar = this.f19836f;
            IntegrityTokenRequest integrityTokenRequest = this.f19835e;
            o0Var = ajVar.f19847b;
            o0Var.c(e10, "requestIntegrityToken(%s)", integrityTokenRequest);
            this.f19834d.trySetException(new IntegrityServiceException(-100, e10));
        }
    }
}
