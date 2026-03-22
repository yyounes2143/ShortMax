package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class aq extends IntegrityTokenResponse {

    /* renamed from: a  reason: collision with root package name */
    private final String f19861a;

    /* renamed from: b  reason: collision with root package name */
    private final y f19862b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(String str, y yVar) {
        this.f19861a = str;
        this.f19862b = yVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenResponse
    public final Task<Integer> showDialog(Activity activity, int i10) {
        return this.f19862b.a(activity, i10);
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenResponse
    public final String token() {
        return this.f19861a;
    }
}
