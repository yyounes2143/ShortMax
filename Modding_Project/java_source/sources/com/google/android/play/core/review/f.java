package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import io.bidmachine.Framework;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class f extends f7.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f19959b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i f19960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i iVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.f19959b = taskCompletionSource2;
        this.f19960c = iVar;
    }

    @Override // f7.j
    protected final void a() {
        f7.i iVar;
        String str;
        String str2;
        String str3;
        try {
            f7.f fVar = (f7.f) this.f19960c.f19965a.e();
            str2 = this.f19960c.f19966b;
            Bundle bundle = new Bundle();
            Map a10 = j.a();
            bundle.putInt("playcore_version_code", ((Integer) a10.get("java")).intValue());
            if (a10.containsKey("native")) {
                bundle.putInt("playcore_native_version", ((Integer) a10.get("native")).intValue());
            }
            if (a10.containsKey(Framework.UNITY)) {
                bundle.putInt("playcore_unity_version", ((Integer) a10.get(Framework.UNITY)).intValue());
            }
            i iVar2 = this.f19960c;
            TaskCompletionSource taskCompletionSource = this.f19959b;
            str3 = iVar2.f19966b;
            fVar.h(str2, bundle, new h(iVar2, taskCompletionSource, str3));
        } catch (RemoteException e10) {
            i iVar3 = this.f19960c;
            iVar = i.f19964c;
            str = iVar3.f19966b;
            iVar.b(e10, "error requesting in-app review for %s", str);
            this.f19959b.trySetException(new RuntimeException(e10));
        }
    }
}
