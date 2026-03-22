package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class ah extends y {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ai f19842a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ah(ai aiVar, String str, long j10) {
        super(str, j10);
        this.f19842a = aiVar;
    }

    @Override // com.google.android.play.core.integrity.y
    final Task b(Activity activity, Bundle bundle) {
        return this.f19842a.f19843a.b(activity, bundle);
    }
}
