package com.huawei.agconnect.core.a;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static Map<Class<?>, ra.a> f21753c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static Map<Class<?>, Object> f21754d = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private Map<Class<?>, ra.a> f21755a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<Class<?>, Object> f21756b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(List<ra.a> list, Context context) {
        c(list, context);
    }

    private static Constructor a(Class cls, Class... clsArr) {
        Constructor<?>[] declaredConstructors;
        boolean z10 = false;
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == clsArr.length) {
                for (int i10 = 0; i10 < clsArr.length; i10++) {
                    if (parameterTypes[i10] == clsArr[i10]) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    return constructor;
                }
            }
        }
        return null;
    }

    private void b(String str, Exception exc) {
        String str2;
        Log.e("AGC_ServiceRepository", "Instantiate shared service " + str + exc.getLocalizedMessage());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cause message:");
        if (exc.getCause() != null) {
            str2 = exc.getCause().getMessage();
        } else {
            str2 = "";
        }
        sb2.append(str2);
        Log.e("AGC_ServiceRepository", sb2.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0061 A[Catch: InvocationTargetException -> 0x006a, InstantiationException -> 0x006c, IllegalAccessException -> 0x006e, TryCatch #2 {IllegalAccessException -> 0x006e, InstantiationException -> 0x006c, InvocationTargetException -> 0x006a, blocks: (B:21:0x0051, B:23:0x0061, B:31:0x0078, B:30:0x0070), top: B:39:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0070 A[Catch: InvocationTargetException -> 0x006a, InstantiationException -> 0x006c, IllegalAccessException -> 0x006e, TryCatch #2 {IllegalAccessException -> 0x006e, InstantiationException -> 0x006c, InvocationTargetException -> 0x006a, blocks: (B:21:0x0051, B:23:0x0061, B:31:0x0078, B:30:0x0070), top: B:39:0x0051 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(java.util.List<ra.a> r5, android.content.Context r6) {
        /*
            r4 = this;
            java.lang.String r0 = "addService start"
            java.lang.String r1 = "AGC_ServiceRepository"
            android.util.Log.d(r1, r0)
            if (r5 != 0) goto La
            return
        La:
            java.util.Iterator r5 = r5.iterator()
        Le:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L8e
            java.lang.Object r0 = r5.next()
            ra.a r0 = (ra.a) r0
            boolean r2 = r0.d()
            if (r2 == 0) goto L36
            java.util.Map<java.lang.Class<?>, ra.a> r2 = com.huawei.agconnect.core.a.b.f21753c
            java.lang.Class r3 = r0.a()
            boolean r2 = r2.containsKey(r3)
            if (r2 != 0) goto L39
            java.util.Map<java.lang.Class<?>, ra.a> r2 = com.huawei.agconnect.core.a.b.f21753c
        L2e:
            java.lang.Class r3 = r0.a()
            r2.put(r3, r0)
            goto L39
        L36:
            java.util.Map<java.lang.Class<?>, ra.a> r2 = r4.f21755a
            goto L2e
        L39:
            boolean r2 = r0.c()
            if (r2 == 0) goto Le
            java.lang.Class r2 = r0.b()
            if (r2 == 0) goto Le
            java.util.Map<java.lang.Class<?>, java.lang.Object> r2 = com.huawei.agconnect.core.a.b.f21754d
            java.lang.Class r3 = r0.a()
            boolean r2 = r2.containsKey(r3)
            if (r2 != 0) goto Le
            java.lang.Class r2 = r0.b()     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            java.lang.Class<android.content.Context> r3 = android.content.Context.class
            java.lang.Class[] r3 = new java.lang.Class[]{r3}     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            java.lang.reflect.Constructor r2 = a(r2, r3)     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            if (r2 == 0) goto L70
            java.lang.Object[] r3 = new java.lang.Object[]{r6}     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            java.lang.Object r2 = r2.newInstance(r3)     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            goto L78
        L6a:
            r0 = move-exception
            goto L82
        L6c:
            r0 = move-exception
            goto L88
        L6e:
            r0 = move-exception
            goto L8b
        L70:
            java.lang.Class r2 = r0.b()     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            java.lang.Object r2 = r2.newInstance()     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
        L78:
            java.util.Map<java.lang.Class<?>, java.lang.Object> r3 = com.huawei.agconnect.core.a.b.f21754d     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            java.lang.Class r0 = r0.a()     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            r3.put(r0, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L6a java.lang.InstantiationException -> L6c java.lang.IllegalAccessException -> L6e
            goto Le
        L82:
            java.lang.String r2 = "TargetException"
        L84:
            r4.b(r2, r0)
            goto Le
        L88:
            java.lang.String r2 = "InstantiationException"
            goto L84
        L8b:
            java.lang.String r2 = "AccessException"
            goto L84
        L8e:
            java.lang.String r5 = "addService end"
            android.util.Log.d(r1, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.agconnect.core.a.b.c(java.util.List, android.content.Context):void");
    }
}
