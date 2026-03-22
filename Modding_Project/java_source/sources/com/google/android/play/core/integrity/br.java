package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class br extends StandardIntegrityManager.StandardIntegrityToken {

    /* renamed from: a  reason: collision with root package name */
    private final String f19918a;

    /* renamed from: b  reason: collision with root package name */
    private final y f19919b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(String str, y yVar) {
        this.f19918a = str;
        this.f19919b = yVar;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final Task<Integer> showDialog(Activity activity, int i10) {
        return this.f19919b.a(activity, i10);
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final String token() {
        return this.f19918a;
    }
}
