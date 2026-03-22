package com.apm.insight.l;

import android.annotation.TargetApi;
import android.os.Debug;
import java.util.Map;
/* compiled from: DebugMemInfoCompat.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static a f7053a = new b((byte) 0);

    /* compiled from: DebugMemInfoCompat.java */
    /* loaded from: classes2.dex */
    static class a {
        private a() {
        }

        public int a(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int b(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int c(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    /* compiled from: DebugMemInfoCompat.java */
    @TargetApi(19)
    /* loaded from: classes2.dex */
    static class b extends a {
        private b() {
            super((byte) 0);
        }

        @Override // com.apm.insight.l.c.a
        public final int a(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalPrivateClean();
        }

        @Override // com.apm.insight.l.c.a
        public final int b(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSharedClean();
        }

        @Override // com.apm.insight.l.c.a
        public final int c(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSwappablePss();
        }

        /* synthetic */ b(byte b10) {
            this();
        }
    }

    public static int a(Debug.MemoryInfo memoryInfo) {
        return f7053a.a(memoryInfo);
    }

    public static int b(Debug.MemoryInfo memoryInfo) {
        return f7053a.b(memoryInfo);
    }

    public static int c(Debug.MemoryInfo memoryInfo) {
        return f7053a.c(memoryInfo);
    }

    /* compiled from: DebugMemInfoCompat.java */
    /* renamed from: com.apm.insight.l.c$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static Long a(Map<? super String, Long> map, String str, Long l10) {
            if (str != null && map != null) {
                Long l11 = map.get(str);
                if (l11 != null) {
                    l10 = Long.valueOf(l11.longValue() + l10.longValue());
                }
                map.put(str, l10);
                return l10;
            }
            return -1L;
        }

        public static Float a(Map<? super String, Float> map) {
            float f10 = 0.0f;
            for (Float f11 : map.values()) {
                if (f11 != null) {
                    f10 += f11.floatValue();
                }
            }
            return Float.valueOf(f10);
        }

        public static int a(Object obj, int i10) {
            if (obj == null) {
                return i10;
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            if (obj instanceof String) {
                try {
                    return Integer.parseInt(String.valueOf(obj));
                } catch (Throwable unused) {
                }
            }
            return i10;
        }
    }
}
