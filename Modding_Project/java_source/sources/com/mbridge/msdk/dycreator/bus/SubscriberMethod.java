package com.mbridge.msdk.dycreator.bus;

import java.lang.reflect.Method;
/* loaded from: classes5.dex */
final class SubscriberMethod {

    /* renamed from: a  reason: collision with root package name */
    final Method f26498a;

    /* renamed from: b  reason: collision with root package name */
    final ThreadMode f26499b;

    /* renamed from: c  reason: collision with root package name */
    final Class<?> f26500c;

    /* renamed from: d  reason: collision with root package name */
    String f26501d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubscriberMethod(Method method, ThreadMode threadMode, Class<?> cls) {
        this.f26498a = method;
        this.f26499b = threadMode;
        this.f26500c = cls;
    }

    private synchronized void a() {
        if (this.f26501d == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f26498a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f26498a.getName());
            sb2.append('(');
            sb2.append(this.f26500c.getName());
            this.f26501d = sb2.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof SubscriberMethod) {
            a();
            return this.f26501d.equals(((SubscriberMethod) obj).f26501d);
        }
        return false;
    }

    public int hashCode() {
        return this.f26498a.hashCode();
    }
}
