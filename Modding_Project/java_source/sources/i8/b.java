package i8;

import a5.g;
import a5.i;
import android.content.Context;
import androidx.annotation.NonNull;
import c5.u;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.common.b0;
import com.google.firebase.crashlytics.internal.common.n0;
import e8.f0;
import f8.j;
import java.nio.charset.Charset;
/* compiled from: DataTransportCrashlyticsReportSender.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final j f53320c = new j();

    /* renamed from: d  reason: collision with root package name */
    private static final String f53321d = e("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: e  reason: collision with root package name */
    private static final String f53322e = e("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: f  reason: collision with root package name */
    private static final g<f0, byte[]> f53323f = new g() { // from class: i8.a
        @Override // a5.g
        public final Object apply(Object obj) {
            byte[] d10;
            d10 = b.d((f0) obj);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final e f53324a;

    /* renamed from: b  reason: collision with root package name */
    private final g<f0, byte[]> f53325b;

    b(e eVar, g<f0, byte[]> gVar) {
        this.f53324a = eVar;
        this.f53325b = gVar;
    }

    public static b b(Context context, j8.b bVar, n0 n0Var) {
        u.f(context);
        i g10 = u.c().g(new com.google.android.datatransport.cct.a(f53321d, f53322e));
        a5.c b10 = a5.c.b("json");
        g<f0, byte[]> gVar = f53323f;
        return new b(new e(g10.a("FIREBASE_CRASHLYTICS_REPORT", f0.class, b10, gVar), bVar.a(), n0Var), gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] d(f0 f0Var) {
        return f53320c.M(f0Var).getBytes(Charset.forName("UTF-8"));
    }

    private static String e(String str, String str2) {
        int length = str.length() - str2.length();
        if (length >= 0 && length <= 1) {
            StringBuilder sb2 = new StringBuilder(str.length() + str2.length());
            for (int i10 = 0; i10 < str.length(); i10++) {
                sb2.append(str.charAt(i10));
                if (str2.length() > i10) {
                    sb2.append(str2.charAt(i10));
                }
            }
            return sb2.toString();
        }
        throw new IllegalArgumentException("Invalid input received");
    }

    @NonNull
    public Task<b0> c(@NonNull b0 b0Var, boolean z10) {
        return this.f53324a.i(b0Var, z10).getTask();
    }
}
