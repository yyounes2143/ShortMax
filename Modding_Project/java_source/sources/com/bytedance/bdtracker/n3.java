package com.bytedance.bdtracker;

import com.bytedance.applog.profile.UserProfileCallback;
/* loaded from: classes3.dex */
public class n3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o3 f12253a;

    public n3(o3 o3Var) {
        this.f12253a = o3Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        UserProfileCallback userProfileCallback = this.f12253a.f12296d;
        if (userProfileCallback != null) {
            userProfileCallback.onSuccess();
        }
    }
}
