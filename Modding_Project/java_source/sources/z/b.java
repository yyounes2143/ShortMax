package z;

import android.content.Context;
import com.facebook.soloader.SoLoader;
import com.tencent.mmkv.MMKV;
import com.tencent.mmkv.MMKVLogLevel;
import dd.d;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class b extends y.a {

    /* renamed from: b  reason: collision with root package name */
    public String f71170b = "V2MMKVCache_So_Loader";

    public static final void f(Context context, b bVar, d dVar, String str) {
        String str2 = "";
        try {
            SoLoader.l(context, false);
            SoLoader.s(str);
            bVar.f71170b = "V2MMKVCache_So_Loader";
        } catch (Error e10) {
            if (dVar != null) {
                StringBuilder sb2 = new StringBuilder("SoLoader.init failed -> libName=");
                sb2.append(str);
                sb2.append(",err=");
                String message = e10.getMessage();
                if (message != null) {
                    str2 = message;
                }
                sb2.append(str2);
                sb2.append('.');
                dVar.onError(sb2.toString());
            }
            System.loadLibrary(str);
            bVar.f71170b = "V2MMKVCache_System_Loader";
        } catch (Exception e11) {
            if (dVar != null) {
                StringBuilder sb3 = new StringBuilder("SoLoader.init failed -> libName=");
                sb3.append(str);
                sb3.append(",err=");
                String message2 = e11.getMessage();
                if (message2 != null) {
                    str2 = message2;
                }
                sb3.append(str2);
                sb3.append('.');
                dVar.onError(sb3.toString());
            }
            System.loadLibrary(str);
            bVar.f71170b = "V2MMKVCache_System_Loader";
        }
    }

    @Override // y.a, dd.b
    public final boolean c(final Context context, boolean z10, final d dVar) {
        MMKVLogLevel mMKVLogLevel;
        String str = "";
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (this.f70530a == null) {
                MMKV.initialize(context, new MMKV.b() { // from class: z.a
                    @Override // com.tencent.mmkv.MMKV.b
                    public final void loadLibrary(String str2) {
                        b.f(context, this, dVar, str2);
                    }
                });
                if (z10) {
                    mMKVLogLevel = MMKVLogLevel.LevelDebug;
                } else {
                    mMKVLogLevel = MMKVLogLevel.LevelNone;
                }
                MMKV.setLogLevel(mMKVLogLevel);
                this.f70530a = MMKV.defaultMMKV();
            }
            return true;
        } catch (Error e10) {
            if (dVar != null) {
                StringBuilder sb2 = new StringBuilder("init MMKVCache fail -> UnsatisfiedLinkError message=");
                String message = e10.getMessage();
                if (message != null) {
                    str = message;
                }
                sb2.append(str);
                sb2.append('.');
                dVar.onError(sb2.toString());
            }
            return false;
        } catch (Exception e11) {
            if (dVar != null) {
                StringBuilder sb3 = new StringBuilder("init MMKVCache fail -> Exception message=");
                String message2 = e11.getMessage();
                if (message2 != null) {
                    str = message2;
                }
                sb3.append(str);
                sb3.append('.');
                dVar.onError(sb3.toString());
            }
            return false;
        }
    }

    @Override // y.a, dd.b
    public final String tag() {
        return this.f71170b;
    }
}
