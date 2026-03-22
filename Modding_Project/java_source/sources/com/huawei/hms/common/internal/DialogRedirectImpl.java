package com.huawei.hms.common.internal;

import android.app.Activity;
import android.content.Intent;
/* loaded from: classes5.dex */
public class DialogRedirectImpl extends DialogRedirect {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f22050a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22051b;

    /* renamed from: c  reason: collision with root package name */
    private final Intent f22052c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogRedirectImpl(Intent intent, Activity activity, int i10) {
        this.f22052c = intent;
        this.f22050a = activity;
        this.f22051b = i10;
    }

    @Override // com.huawei.hms.common.internal.DialogRedirect
    public final void redirect() {
        Activity activity;
        Intent intent = this.f22052c;
        if (intent != null && (activity = this.f22050a) != null) {
            activity.startActivityForResult(intent, this.f22051b);
        }
    }
}
