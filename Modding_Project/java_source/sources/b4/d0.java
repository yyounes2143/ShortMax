package b4;

import com.facebook.imagepipeline.memory.AshmemMemoryChunkPool;
import com.facebook.imagepipeline.memory.BufferMemoryChunkPool;
import com.facebook.imagepipeline.memory.NativeMemoryChunkPool;
import java.lang.reflect.InvocationTargetException;
/* compiled from: PoolFactory.java */
/* loaded from: classes3.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f2202a;

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.imagepipeline.memory.e f2203b;

    /* renamed from: c  reason: collision with root package name */
    private i f2204c;

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.imagepipeline.memory.e f2205d;

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.memory.c f2206e;

    /* renamed from: f  reason: collision with root package name */
    private com.facebook.imagepipeline.memory.e f2207f;

    /* renamed from: g  reason: collision with root package name */
    private n2.g f2208g;

    /* renamed from: h  reason: collision with root package name */
    private n2.j f2209h;

    /* renamed from: i  reason: collision with root package name */
    private n2.a f2210i;

    public d0(b0 b0Var) {
        this.f2202a = (b0) k2.h.g(b0Var);
    }

    private com.facebook.imagepipeline.memory.e a() {
        if (this.f2203b == null) {
            try {
                this.f2203b = (com.facebook.imagepipeline.memory.e) AshmemMemoryChunkPool.class.getConstructor(n2.c.class, e0.class, f0.class).newInstance(this.f2202a.i(), this.f2202a.g(), this.f2202a.h());
            } catch (ClassNotFoundException unused) {
                this.f2203b = null;
            } catch (IllegalAccessException unused2) {
                this.f2203b = null;
            } catch (InstantiationException unused3) {
                this.f2203b = null;
            } catch (NoSuchMethodException unused4) {
                this.f2203b = null;
            } catch (InvocationTargetException unused5) {
                this.f2203b = null;
            }
        }
        return this.f2203b;
    }

    private com.facebook.imagepipeline.memory.e f(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return a();
                }
                throw new IllegalArgumentException("Invalid MemoryChunkType");
            }
            return c();
        }
        return g();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public i b() {
        char c10;
        n2.c cVar;
        if (this.f2204c == null) {
            String e10 = this.f2202a.e();
            switch (e10.hashCode()) {
                case -1868884870:
                    if (e10.equals("legacy_default_params")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1106578487:
                    if (e10.equals("legacy")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -404562712:
                    if (e10.equals("experimental")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -402149703:
                    if (e10.equals("dummy_with_tracking")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 95945896:
                    if (e10.equals("dummy")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            if (c10 != 0) {
                if (c10 != 1) {
                    if (c10 != 2) {
                        if (c10 != 3) {
                            this.f2204c = new com.facebook.imagepipeline.memory.b(this.f2202a.i(), this.f2202a.c(), this.f2202a.d(), this.f2202a.l());
                        } else {
                            this.f2204c = new com.facebook.imagepipeline.memory.b(this.f2202a.i(), n.a(), this.f2202a.d(), this.f2202a.l());
                        }
                    } else {
                        int b10 = this.f2202a.b();
                        int a10 = this.f2202a.a();
                        z h10 = z.h();
                        if (this.f2202a.m()) {
                            cVar = this.f2202a.i();
                        } else {
                            cVar = null;
                        }
                        this.f2204c = new t(b10, a10, h10, cVar);
                    }
                } else {
                    this.f2204c = new s();
                }
            } else {
                this.f2204c = new r();
            }
        }
        return this.f2204c;
    }

    public com.facebook.imagepipeline.memory.e c() {
        if (this.f2205d == null) {
            try {
                this.f2205d = (com.facebook.imagepipeline.memory.e) BufferMemoryChunkPool.class.getConstructor(n2.c.class, e0.class, f0.class).newInstance(this.f2202a.i(), this.f2202a.g(), this.f2202a.h());
            } catch (ClassNotFoundException unused) {
                this.f2205d = null;
            } catch (IllegalAccessException unused2) {
                this.f2205d = null;
            } catch (InstantiationException unused3) {
                this.f2205d = null;
            } catch (NoSuchMethodException unused4) {
                this.f2205d = null;
            } catch (InvocationTargetException unused5) {
                this.f2205d = null;
            }
        }
        return this.f2205d;
    }

    public com.facebook.imagepipeline.memory.c d() {
        if (this.f2206e == null) {
            this.f2206e = new com.facebook.imagepipeline.memory.c(this.f2202a.i(), this.f2202a.f());
        }
        return this.f2206e;
    }

    public int e() {
        return this.f2202a.f().f2217g;
    }

    public com.facebook.imagepipeline.memory.e g() {
        if (this.f2207f == null) {
            try {
                this.f2207f = (com.facebook.imagepipeline.memory.e) NativeMemoryChunkPool.class.getConstructor(n2.c.class, e0.class, f0.class).newInstance(this.f2202a.i(), this.f2202a.g(), this.f2202a.h());
            } catch (ClassNotFoundException e10) {
                l2.a.j("PoolFactory", "", e10);
                this.f2207f = null;
            } catch (IllegalAccessException e11) {
                l2.a.j("PoolFactory", "", e11);
                this.f2207f = null;
            } catch (InstantiationException e12) {
                l2.a.j("PoolFactory", "", e12);
                this.f2207f = null;
            } catch (NoSuchMethodException e13) {
                l2.a.j("PoolFactory", "", e13);
                this.f2207f = null;
            } catch (InvocationTargetException e14) {
                l2.a.j("PoolFactory", "", e14);
                this.f2207f = null;
            }
        }
        return this.f2207f;
    }

    public n2.g h() {
        return i(!t3.w.a() ? 1 : 0);
    }

    public n2.g i(int i10) {
        if (this.f2208g == null) {
            com.facebook.imagepipeline.memory.e f10 = f(i10);
            k2.h.h(f10, "failed to get pool for chunk type: " + i10);
            this.f2208g = new y(f10, j());
        }
        return this.f2208g;
    }

    public n2.j j() {
        if (this.f2209h == null) {
            this.f2209h = new n2.j(k());
        }
        return this.f2209h;
    }

    public n2.a k() {
        if (this.f2210i == null) {
            this.f2210i = new com.facebook.imagepipeline.memory.d(this.f2202a.i(), this.f2202a.j(), this.f2202a.k());
        }
        return this.f2210i;
    }
}
