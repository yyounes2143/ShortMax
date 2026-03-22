package lk;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.startshorts.androidplayer.log.Logger;
import dd.e;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GlobalGson.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f62233a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f62234b = kotlin.c.b(new Function0() { // from class: lk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Gson g10;
            g10 = b.g();
            return g10;
        }
    });

    private b() {
    }

    private final Gson f() {
        return (Gson) f62234b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson g() {
        return new GsonBuilder().addSerializationExclusionStrategy(new d()).create();
    }

    @Nullable
    public final <T> T b(@Nullable String str, @NotNull e impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        try {
            return (T) f().fromJson(str, impl);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("GlobalGson", "fromJson failed -> json(" + str + ") " + e10.getMessage());
            return null;
        }
    }

    @Nullable
    public final <T> T c(@Nullable String str, @NotNull Class<T> classOfT) {
        Intrinsics.checkNotNullParameter(classOfT, "classOfT");
        try {
            return (T) f().fromJson(str, (Class<Object>) classOfT);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("GlobalGson", "fromJson failed -> json(" + str + ") " + e10.getMessage());
            return null;
        }
    }

    @Nullable
    public final <T> T d(@Nullable String str, @NotNull Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        try {
            return (T) f().fromJson(str, type);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("GlobalGson", "fromJson failed -> json(" + str + ") " + e10.getMessage());
            return null;
        }
    }

    @NotNull
    public final Gson e() {
        Gson f10 = f();
        Intrinsics.checkNotNullExpressionValue(f10, "<get-mGson>(...)");
        return f10;
    }

    @NotNull
    public final String h(@Nullable Object obj) {
        String json = f().toJson(obj);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }
}
