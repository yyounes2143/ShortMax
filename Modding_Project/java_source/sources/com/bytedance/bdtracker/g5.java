package com.bytedance.bdtracker;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.UUID;
/* loaded from: classes3.dex */
public final class g5 {

    /* renamed from: a  reason: collision with root package name */
    public static f5<String> f12029a = new a();

    /* loaded from: classes3.dex */
    public static class a extends f5<String> {
        @Override // com.bytedance.bdtracker.f5
        public String a(Object[] objArr) {
            SharedPreferences sharedPreferences = (SharedPreferences) objArr[0];
            String string = sharedPreferences.getString("cdid", "");
            if (TextUtils.isEmpty(string)) {
                String uuid = UUID.randomUUID().toString();
                com.bytedance.bdtracker.a.a(sharedPreferences, "cdid", uuid);
                return uuid;
            }
            return string;
        }
    }
}
