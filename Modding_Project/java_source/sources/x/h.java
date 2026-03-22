package x;

import com.google.gson.Gson;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    public static final i f70361a = kotlin.c.b(new Function0() { // from class: x.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.a();
        }
    });

    public static final Gson a() {
        return new Gson();
    }

    public static List b(String str, Class clazz) {
        Type eVar;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (str == null || StringsKt.t0(str)) {
            return null;
        }
        if (Intrinsics.areEqual(clazz, Long.TYPE)) {
            eVar = new a().getType();
        } else if (Intrinsics.areEqual(clazz, Integer.TYPE)) {
            eVar = new b().getType();
        } else if (Intrinsics.areEqual(clazz, Boolean.TYPE)) {
            eVar = new c().getType();
        } else if (Intrinsics.areEqual(clazz, Double.TYPE)) {
            eVar = new d().getType();
        } else if (Intrinsics.areEqual(clazz, Float.TYPE)) {
            eVar = new e().getType();
        } else if (Intrinsics.areEqual(clazz, String.class)) {
            eVar = new f().getType();
        } else {
            eVar = new dd.e(clazz);
        }
        try {
            return (List) ((Gson) f70361a.getValue()).fromJson(str, eVar);
        } catch (Exception unused) {
            return null;
        }
    }
}
