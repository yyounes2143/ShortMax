package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.TextFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProtoLogger.java */
/* loaded from: classes7.dex */
public class z4 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f58745a = {BuildConfig.LIBRARY_PACKAGE_NAME, "com.explorestack"};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProtoLogger.java */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f58746a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.JavaType.values().length];
            f58746a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f58746a[Descriptors.FieldDescriptor.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private static void b(@NonNull JSONArray jSONArray, @NonNull Object obj) {
        jSONArray.put(obj);
    }

    private static void c(@NonNull JSONObject jSONObject, @NonNull String str, @NonNull Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException unused) {
        }
    }

    @NonNull
    private static String d(@NonNull Object obj) {
        if (obj instanceof ByteString) {
            return TextFormat.escapeBytes((ByteString) obj);
        }
        return TextFormat.escapeBytes((byte[]) obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String e(String str, MessageOrBuilder messageOrBuilder) {
        return String.format("[%s] %s", str, k(messageOrBuilder));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(@NonNull final String str, @Nullable final MessageOrBuilder messageOrBuilder) {
        if (messageOrBuilder != null) {
            io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.y4
                @Override // hr.b
                public final Object get() {
                    String e10;
                    e10 = z4.e(str, messageOrBuilder);
                    return e10;
                }
            });
        }
    }

    @NonNull
    private static Object g(@NonNull Descriptors.FieldDescriptor fieldDescriptor, @NonNull Object obj) {
        try {
            if (fieldDescriptor.isRepeated() && (obj instanceof List)) {
                return j(fieldDescriptor, (List) obj);
            }
            switch (a.f58746a[fieldDescriptor.getJavaType().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    return obj;
                case 7:
                    return d(obj);
                case 8:
                    return ((Descriptors.GenericDescriptor) obj).getName();
                case 9:
                    return k((MessageOrBuilder) obj);
                default:
                    return "Unsupported type";
            }
        } catch (Throwable unused) {
            return "Parsing error";
        }
    }

    @NonNull
    private static JSONObject h(@NonNull Any any) {
        String[] split;
        String[] strArr;
        String str = any.getTypeUrl().split(DomExceptionUtils.SEPARATOR)[split.length - 1];
        for (String str2 : f58745a) {
            try {
                return k(any.unpack(Class.forName(str2 + str.substring(str.indexOf(".")))));
            } catch (Exception unused) {
            }
        }
        return new JSONObject();
    }

    private static JSONObject i(@NonNull Map<Descriptors.FieldDescriptor, Object> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            c(jSONObject, key.getName(), g(key, entry.getValue()));
        }
        return jSONObject;
    }

    @NonNull
    private static JSONArray j(@NonNull Descriptors.FieldDescriptor fieldDescriptor, @NonNull List<?> list) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            b(jSONArray, g(fieldDescriptor, it.next()));
        }
        return jSONArray;
    }

    @NonNull
    private static JSONObject k(@NonNull MessageOrBuilder messageOrBuilder) {
        if (messageOrBuilder instanceof Any) {
            return h((Any) messageOrBuilder);
        }
        return i(messageOrBuilder.getAllFields());
    }
}
