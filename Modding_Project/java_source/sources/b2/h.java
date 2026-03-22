package b2;

import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import com.facebook.v;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Utils.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/facebook/appevents/ml/Utils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,126:1\n107#2:127\n79#2,22:128\n37#3,2:150\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/facebook/appevents/ml/Utils\n*L\n43#1:127\n43#1:128,22\n44#1:150,2\n*E\n"})
/* loaded from: classes3.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f2172a = new h();

    private h() {
    }

    @Nullable
    public static final File a() {
        if (o4.a.d(h.class)) {
            return null;
        }
        try {
            File file = new File(v.l().getFilesDir(), "facebook_ml/");
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th2) {
            o4.a.b(th2, h.class);
            return null;
        }
    }

    @Nullable
    public static final Map<String, a> c(@NotNull File file) {
        int i10;
        if (o4.a.d(h.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(file, "file");
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                int available = fileInputStream.available();
                DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                byte[] bArr = new byte[available];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                if (available < 4) {
                    return null;
                }
                int i11 = 0;
                ByteBuffer wrap = ByteBuffer.wrap(bArr, 0, 4);
                wrap.order(ByteOrder.LITTLE_ENDIAN);
                int i12 = wrap.getInt();
                int i13 = i12 + 4;
                if (available < i13) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(new String(bArr, 4, i12, Charsets.UTF_8));
                JSONArray names = jSONObject.names();
                int length = names.length();
                String[] strArr = new String[length];
                for (int i14 = 0; i14 < length; i14++) {
                    strArr[i14] = names.getString(i14);
                }
                n.R(strArr);
                HashMap hashMap = new HashMap();
                int i15 = 0;
                while (i15 < length) {
                    String str = strArr[i15];
                    if (str == null) {
                        i10 = i11;
                    } else {
                        JSONArray jSONArray = jSONObject.getJSONArray(str);
                        int length2 = jSONArray.length();
                        int[] iArr = new int[length2];
                        int i16 = 1;
                        while (i11 < length2) {
                            int i17 = jSONArray.getInt(i11);
                            iArr[i11] = i17;
                            i16 *= i17;
                            i11++;
                        }
                        int i18 = i16 * 4;
                        int i19 = i13 + i18;
                        if (i19 > available) {
                            return null;
                        }
                        ByteBuffer wrap2 = ByteBuffer.wrap(bArr, i13, i18);
                        wrap2.order(ByteOrder.LITTLE_ENDIAN);
                        a aVar = new a(iArr);
                        i10 = 0;
                        wrap2.asFloatBuffer().get(aVar.a(), 0, i16);
                        hashMap.put(str, aVar);
                        i13 = i19;
                    }
                    i15++;
                    i11 = i10;
                }
                return hashMap;
            } catch (Exception unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, h.class);
            return null;
        }
    }

    @NotNull
    public final String b(@NotNull String str) {
        int i10;
        boolean z10;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(str, "str");
            int length = str.length() - 1;
            int i11 = 0;
            boolean z11 = false;
            while (i11 <= length) {
                if (!z11) {
                    i10 = i11;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) str.charAt(i10), 32) <= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z11) {
                    if (!z10) {
                        z11 = true;
                    } else {
                        i11++;
                    }
                } else if (!z10) {
                    break;
                } else {
                    length--;
                }
            }
            String join = TextUtils.join(" ", (String[]) new Regex("\\s+").q(str.subSequence(i11, length + 1).toString(), 0).toArray(new String[0]));
            Intrinsics.checkNotNullExpressionValue(join, "join(\" \", strArray)");
            return join;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    public final int[] d(@NotNull String texts, int i10) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(texts, "texts");
            int[] iArr = new int[i10];
            String b10 = b(texts);
            Charset forName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(\"UTF-8\")");
            byte[] bytes = b10.getBytes(forName);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            for (int i11 = 0; i11 < i10; i11++) {
                if (i11 < bytes.length) {
                    iArr[i11] = bytes[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                } else {
                    iArr[i11] = 0;
                }
            }
            return iArr;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }
}
