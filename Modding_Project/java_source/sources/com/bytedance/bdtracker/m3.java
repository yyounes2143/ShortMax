package com.bytedance.bdtracker;

import com.bytedance.applog.profile.UserProfileCallback;
/* loaded from: classes3.dex */
public class m3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f12214a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o3 f12215b;

    public m3(o3 o3Var, int i10) {
        this.f12215b = o3Var;
        this.f12214a = i10;
    }

    @Override // java.lang.Runnable
    public void run() {
        UserProfileCallback userProfileCallback = this.f12215b.f12296d;
        if (userProfileCallback != null) {
            userProfileCallback.onFail(this.f12214a);
        }
    }
}
