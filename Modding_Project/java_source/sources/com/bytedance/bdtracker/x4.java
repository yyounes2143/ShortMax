package com.bytedance.bdtracker;

import java.util.UUID;
/* loaded from: classes3.dex */
public class x4 {

    /* renamed from: a  reason: collision with root package name */
    public static j4<String> f12527a = new a();

    /* loaded from: classes3.dex */
    public static class a extends j4<String> {
        @Override // com.bytedance.bdtracker.j4
        public String a(Object[] objArr) {
            return UUID.randomUUID().toString();
        }
    }

    public static String a() {
        return f12527a.b(new Object[0]);
    }
}
