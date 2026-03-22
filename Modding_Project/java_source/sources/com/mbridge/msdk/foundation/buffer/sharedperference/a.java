package com.mbridge.msdk.foundation.buffer.sharedperference;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: SharedPerferenceManager.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public static final String f26648b = "a";

    /* renamed from: c  reason: collision with root package name */
    private static a f26649c;

    /* renamed from: a  reason: collision with root package name */
    FastKV f26650a;

    private a() {
    }

    public static synchronized a b() {
        a aVar;
        synchronized (a.class) {
            try {
                if (f26649c == null) {
                    f26649c = new a();
                }
                aVar = f26649c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    public String a(String str) {
        try {
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                String str2 = f26648b;
                p0.a(str2, "get error: " + e10.getMessage());
            }
        }
        if (c.m().d() == null) {
            return null;
        }
        a();
        FastKV fastKV = this.f26650a;
        if (fastKV != null) {
            try {
                return fastKV.getString(str, "");
            } catch (Exception unused) {
                return "";
            }
        }
        return null;
    }

    public void c(String str) {
        if (c.m().d() == null) {
            return;
        }
        a();
        FastKV fastKV = this.f26650a;
        if (fastKV != null) {
            try {
                fastKV.remove(str);
            } catch (Exception unused) {
            }
        }
    }

    public Long b(String str) {
        try {
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                String str2 = f26648b;
                p0.a(str2, "getLong error: " + e10.getMessage());
            }
        }
        if (c.m().d() == null) {
            p0.b(f26648b, "context is null in get");
            return 0L;
        }
        a();
        FastKV fastKV = this.f26650a;
        if (fastKV != null) {
            try {
                return Long.valueOf(fastKV.getLong(str, 0L));
            } catch (Exception unused) {
                return 0L;
            }
        }
        return 0L;
    }

    public int a(String str, int i10) {
        try {
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                String str2 = f26648b;
                p0.a(str2, "getInt error: " + e10.getMessage());
            }
        }
        if (c.m().d() == null) {
            return i10;
        }
        a();
        FastKV fastKV = this.f26650a;
        if (fastKV != null) {
            try {
                return fastKV.getInt(str, i10);
            } catch (Exception unused) {
                return i10;
            }
        }
        return i10;
    }

    public void a(String str, String str2) {
        try {
            if (c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f26650a;
            if (fastKV != null) {
                try {
                    fastKV.putString(str, str2);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                String str3 = f26648b;
                p0.a(str3, "put error: " + e10.getMessage());
            }
        }
    }

    public void b(String str, int i10) {
        try {
            if (c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f26650a;
            if (fastKV != null) {
                try {
                    fastKV.putInt(str, i10);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(String str, long j10) {
        try {
            if (c.m().d() == null) {
                p0.b(f26648b, "context is null in put");
                return;
            }
            a();
            FastKV fastKV = this.f26650a;
            if (fastKV != null) {
                try {
                    fastKV.putLong(str, j10);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                String str2 = f26648b;
                p0.a(str2, "putLong error: " + e10.getMessage());
            }
        }
    }

    private void a() {
        if (this.f26650a == null) {
            try {
                this.f26650a = new FastKV.Builder(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "mbridge").build();
            } catch (Exception unused) {
                this.f26650a = null;
            }
        }
    }
}
