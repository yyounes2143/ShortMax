package hk;

import com.startshorts.androidplayer.log.Logger;
import fk.d0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KeyUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static String f52887b;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static String f52889d;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static String f52891f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static String f52892g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f52886a = new b();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Object f52888c = new Object();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Object f52890e = new Object();

    private b() {
    }

    private final String a() {
        List<Number> q10 = CollectionsKt.q(81, 90, 113, 79, 115, 77, 55, 50, 83, 111, 69, 88, 118, 50, 82, 73, 118, 82, 97, 85, 71, 115, 77, 73, 106, 69, 76, 102, 120, 50, 98, 99);
        StringBuilder sb2 = new StringBuilder();
        for (Number number : q10) {
            sb2.append((char) number.intValue());
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private final String b() {
        List<Number> q10 = CollectionsKt.q(77, 73, 71, 102, 77, 65, 48, 71, 67, 83, 113, 71, 83, 73, 98, 51, 68, 81, 69, 66, 65, 81, 85, 65, 65, 52, 71, 78, 65, 68, 67, 66, 105, 81, 75, 66, 103, 81, 68, 81, 78, 56, 119, 74, 69, 118, 100, 99, 112, 107, 108, 107, 117, 51, 117, 119, 120, 76, 97, 122, 54, 55, 79, 116, 80, 51, 71, 112, 65, 75, 50, 65, 72, 85, 89, 47, 43, 80, 87, 118, 105, 106, 80, 86, 75, 66, 83, 82, 67, 88, 68, 54, 119, 105, 114, 43, 74, 75, 74, 81, 55, 122, 99, 120, 55, 115, 69, 110, 65, 120, 85, 105, 47, 67, 77, 122, 119, 82, 110, 43, 66, 109, 75, 111, 109, 73, 118, 81, 112, 122, 73, 85, 122, 76, 117, 97, 65, 120, 105, 117, 53, 82, 77, 48, 66, 65, 107, 75, 87, 88, 65, 120, 75, 83, 99, 115, 106, 56, 110, 89, 51, 118, 108, 98, 67, 104, 79, 100, 119, 52, 73, 67, 120, 113, 114, 83, 79, 51, 81, 90, 77, 101, 68, 120, 122, 121, 78, 76, 88, 75, 110, 88, 109, 55, 79, 70, 66, 66, 47, 119, 53, 120, 108, 105, 53, 122, 85, 104, 68, 81, 73, 68, 65, 81, 65, 66);
        StringBuilder sb2 = new StringBuilder();
        for (Number number : q10) {
            sb2.append((char) number.intValue());
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private final String f() {
        String str = f52891f;
        if (str == null || str.length() == 0) {
            str = a();
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                logger.h("KeyUtil", "generate EventRc4ProductKey -> " + str);
            } else {
                Logger.f41511a.h("KeyUtil", "generate EventRc4ProductKey");
            }
            f52891f = str;
        }
        return str;
    }

    @NotNull
    public final String c() {
        synchronized (f52888c) {
            String str = f52887b;
            if (str != null && str.length() != 0) {
                return str;
            }
            ud.b bVar = ud.b.f68412a;
            String t12 = bVar.t1();
            if (t12.length() > 0) {
                f52887b = t12;
                return t12;
            }
            String a10 = d0.f51721a.a(32);
            Logger.f41511a.h("KeyUtil", "generate ApiRc4Key");
            bVar.H4(a10);
            f52887b = a10;
            return a10;
        }
    }

    @Nullable
    public final String d() {
        synchronized (f52890e) {
            String str = f52889d;
            if (str != null && str.length() != 0) {
                return str;
            }
            e eVar = e.f52894a;
            b bVar = f52886a;
            byte[] bytes = bVar.c().getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            String a10 = eVar.a(bytes, bVar.g(), 2);
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                logger.h("KeyUtil", "generate ApiRc4RsaKey -> " + a10);
            } else {
                Logger.f41511a.h("KeyUtil", "generate ApiRc4RsaKey");
            }
            f52889d = a10;
            return a10;
        }
    }

    @NotNull
    public final String e() {
        return f();
    }

    @NotNull
    public final String g() {
        String str = f52892g;
        if (str == null || str.length() == 0) {
            str = b();
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                logger.h("KeyUtil", "generate RsaPublicKey -> " + str);
            } else {
                Logger.f41511a.h("KeyUtil", "generate RsaPublicKey");
            }
            f52892g = str;
        }
        return str;
    }
}
