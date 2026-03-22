package kotlinx.serialization.json;

import androidx.collection.SieveCacheKt;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.JsonDecodingException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.s0;
import wt.u0;
import wt.x0;
/* compiled from: JsonElement.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJsonElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonElement.kt\nkotlinx/serialization/json/JsonElementKt\n*L\n1#1,348:1\n338#1,4:349\n330#1,4:353\n338#1,4:357\n330#1,4:361\n*S KotlinDebug\n*F\n+ 1 JsonElement.kt\nkotlinx/serialization/json/JsonElementKt\n*L\n259#1:349,4\n269#1:353,4\n278#1:357,4\n285#1:361,4\n*E\n"})
/* loaded from: classes8.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final SerialDescriptor f61988a = s0.a("kotlinx.serialization.json.JsonUnquotedLiteral", tt.a.D(StringCompanionObject.INSTANCE));

    @NotNull
    public static final JsonPrimitive a(@Nullable Boolean bool) {
        if (bool == null) {
            return JsonNull.INSTANCE;
        }
        return new t(bool, false, null, 4, null);
    }

    @NotNull
    public static final JsonPrimitive b(@Nullable Number number) {
        if (number == null) {
            return JsonNull.INSTANCE;
        }
        return new t(number, false, null, 4, null);
    }

    @NotNull
    public static final JsonPrimitive c(@Nullable String str) {
        if (str == null) {
            return JsonNull.INSTANCE;
        }
        return new t(str, true, null, 4, null);
    }

    private static final Void d(JsonElement jsonElement, String str) {
        throw new IllegalArgumentException("Element " + Reflection.getOrCreateKotlinClass(jsonElement.getClass()) + " is not a " + str);
    }

    @Nullable
    public static final Boolean e(@NotNull JsonPrimitive jsonPrimitive) {
        Intrinsics.checkNotNullParameter(jsonPrimitive, "<this>");
        return x0.d(jsonPrimitive.a());
    }

    @Nullable
    public static final String f(@NotNull JsonPrimitive jsonPrimitive) {
        Intrinsics.checkNotNullParameter(jsonPrimitive, "<this>");
        if (jsonPrimitive instanceof JsonNull) {
            return null;
        }
        return jsonPrimitive.a();
    }

    public static final double g(@NotNull JsonPrimitive jsonPrimitive) {
        Intrinsics.checkNotNullParameter(jsonPrimitive, "<this>");
        return Double.parseDouble(jsonPrimitive.a());
    }

    public static final float h(@NotNull JsonPrimitive jsonPrimitive) {
        Intrinsics.checkNotNullParameter(jsonPrimitive, "<this>");
        return Float.parseFloat(jsonPrimitive.a());
    }

    public static final int i(@NotNull JsonPrimitive jsonPrimitive) {
        Intrinsics.checkNotNullParameter(jsonPrimitive, "<this>");
        try {
            long m10 = new u0(jsonPrimitive.a()).m();
            if (SieveCacheKt.NodeMetaAndPreviousMask <= m10 && m10 <= SieveCacheKt.NodeLinkMask) {
                return (int) m10;
            }
            throw new NumberFormatException(jsonPrimitive.a() + " is not an Int");
        } catch (JsonDecodingException e10) {
            throw new NumberFormatException(e10.getMessage());
        }
    }

    @NotNull
    public static final JsonObject j(@NotNull JsonElement jsonElement) {
        JsonObject jsonObject;
        Intrinsics.checkNotNullParameter(jsonElement, "<this>");
        if (jsonElement instanceof JsonObject) {
            jsonObject = (JsonObject) jsonElement;
        } else {
            jsonObject = null;
        }
        if (jsonObject != null) {
            return jsonObject;
        }
        d(jsonElement, "JsonObject");
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final JsonPrimitive k(@NotNull JsonElement jsonElement) {
        JsonPrimitive jsonPrimitive;
        Intrinsics.checkNotNullParameter(jsonElement, "<this>");
        if (jsonElement instanceof JsonPrimitive) {
            jsonPrimitive = (JsonPrimitive) jsonElement;
        } else {
            jsonPrimitive = null;
        }
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        d(jsonElement, "JsonPrimitive");
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final SerialDescriptor l() {
        return f61988a;
    }

    public static final long m(@NotNull JsonPrimitive jsonPrimitive) {
        Intrinsics.checkNotNullParameter(jsonPrimitive, "<this>");
        try {
            return new u0(jsonPrimitive.a()).m();
        } catch (JsonDecodingException e10) {
            throw new NumberFormatException(e10.getMessage());
        }
    }
}
