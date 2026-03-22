package com.amazonaws.mobile.client;

import java.util.Map;
/* loaded from: classes2.dex */
public class UserStateDetails {

    /* renamed from: a  reason: collision with root package name */
    private final UserState f5358a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f5359b;

    /* renamed from: c  reason: collision with root package name */
    private Exception f5360c;

    public UserStateDetails(UserState userState, Map<String, String> map) {
        this.f5358a = userState;
        this.f5359b = map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Exception a() {
        return this.f5360c;
    }

    public UserState b() {
        return this.f5358a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(Exception exc) {
        this.f5360c = exc;
    }

    public boolean equals(Object obj) {
        if (obj instanceof UserStateDetails) {
            UserStateDetails userStateDetails = (UserStateDetails) obj;
            if (!this.f5358a.equals(userStateDetails.f5358a)) {
                return false;
            }
            Map<String, String> map = userStateDetails.f5359b;
            Map<String, String> map2 = this.f5359b;
            if (map == map2) {
                return true;
            }
            if (map2 == null) {
                return false;
            }
            return map2.equals(map);
        }
        return super.equals(obj);
    }
}
