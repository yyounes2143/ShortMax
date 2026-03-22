package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import androidx.credentials.webauthn.Cbor;
import com.applovin.shadow.okhttp3.internal.ws.WebSocketProtocol;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.e;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Cbor.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class Cbor {
    private final int TYPE_UNSIGNED_INT;
    private final int TYPE_NEGATIVE_INT = 1;
    private final int TYPE_BYTE_STRING = 2;
    private final int TYPE_TEXT_STRING = 3;
    private final int TYPE_ARRAY = 4;
    private final int TYPE_MAP = 5;
    private final int TYPE_TAG = 6;
    private final int TYPE_FLOAT = 7;

    /* compiled from: Cbor.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Arg {
        private final long arg;
        private final int len;

        public Arg(long j10, int i10) {
            this.arg = j10;
            this.len = i10;
        }

        public static /* synthetic */ Arg copy$default(Arg arg, long j10, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                j10 = arg.arg;
            }
            if ((i11 & 2) != 0) {
                i10 = arg.len;
            }
            return arg.copy(j10, i10);
        }

        public final long component1() {
            return this.arg;
        }

        public final int component2() {
            return this.len;
        }

        @NotNull
        public final Arg copy(long j10, int i10) {
            return new Arg(j10, i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Arg)) {
                return false;
            }
            Arg arg = (Arg) obj;
            if (this.arg == arg.arg && this.len == arg.len) {
                return true;
            }
            return false;
        }

        public final long getArg() {
            return this.arg;
        }

        public final int getLen() {
            return this.len;
        }

        public int hashCode() {
            return (Long.hashCode(this.arg) * 31) + Integer.hashCode(this.len);
        }

        @NotNull
        public String toString() {
            return "Arg(arg=" + this.arg + ", len=" + this.len + ')';
        }
    }

    /* compiled from: Cbor.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Item {
        @NotNull
        private final Object item;
        private final int len;

        public Item(@NotNull Object item, int i10) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.item = item;
            this.len = i10;
        }

        public static /* synthetic */ Item copy$default(Item item, Object obj, int i10, int i11, Object obj2) {
            if ((i11 & 1) != 0) {
                obj = item.item;
            }
            if ((i11 & 2) != 0) {
                i10 = item.len;
            }
            return item.copy(obj, i10);
        }

        @NotNull
        public final Object component1() {
            return this.item;
        }

        public final int component2() {
            return this.len;
        }

        @NotNull
        public final Item copy(@NotNull Object item, int i10) {
            Intrinsics.checkNotNullParameter(item, "item");
            return new Item(item, i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Item)) {
                return false;
            }
            Item item = (Item) obj;
            if (Intrinsics.areEqual(this.item, item.item) && this.len == item.len) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Object getItem() {
            return this.item;
        }

        public final int getLen() {
            return this.len;
        }

        public int hashCode() {
            return (this.item.hashCode() * 31) + Integer.hashCode(this.len);
        }

        @NotNull
        public String toString() {
            return "Item(item=" + this.item + ", len=" + this.len + ')';
        }
    }

    private final byte[] createArg(int i10, long j10) {
        int i11 = i10 << 5;
        int i12 = (int) j10;
        if (j10 < 24) {
            return new byte[]{(byte) ((i11 | i12) & 255)};
        }
        if (j10 <= 255) {
            return new byte[]{(byte) ((i11 | 24) & 255), (byte) (i12 & 255)};
        }
        if (j10 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            return new byte[]{(byte) ((i11 | 25) & 255), (byte) ((i12 >> 8) & 255), (byte) (i12 & 255)};
        }
        if (j10 <= 4294967295L) {
            return new byte[]{(byte) ((i11 | 26) & 255), (byte) ((i12 >> 24) & 255), (byte) ((i12 >> 16) & 255), (byte) ((i12 >> 8) & 255), (byte) (i12 & 255)};
        }
        throw new IllegalArgumentException("bad Arg");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int encode$lambda$0(Ref.ObjectRef byteMap, byte[] bArr, byte[] bArr2) {
        Intrinsics.checkNotNullParameter(byteMap, "$byteMap");
        Object obj = ((Map) byteMap.element).get(bArr);
        Intrinsics.checkNotNull(obj);
        byte[] bArr3 = (byte[]) obj;
        Object obj2 = ((Map) byteMap.element).get(bArr2);
        Intrinsics.checkNotNull(obj2);
        byte[] bArr4 = (byte[]) obj2;
        if (bArr.length > bArr2.length) {
            return 1;
        }
        if (bArr.length >= bArr2.length) {
            if (bArr3.length > bArr4.length) {
                return 1;
            }
            if (bArr3.length >= bArr4.length) {
                return 0;
            }
        }
        return -1;
    }

    private final Arg getArg(byte[] bArr, int i10) {
        long j10 = bArr[i10] & 31;
        int i11 = (j10 > 24L ? 1 : (j10 == 24L ? 0 : -1));
        if (i11 < 0) {
            return new Arg(j10, 1);
        }
        if (i11 == 0) {
            return new Arg(bArr[i10 + 1] & 255, 2);
        }
        if (j10 == 25) {
            return new Arg((bArr[i10 + 2] & 255) | ((bArr[i10 + 1] & 255) << 8), 3);
        } else if (j10 == 26) {
            return new Arg((bArr[i10 + 4] & 255) | ((bArr[i10 + 1] & 255) << 24) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 8), 5);
        } else {
            throw new IllegalArgumentException("Bad arg");
        }
    }

    private final int getType(byte[] bArr, int i10) {
        return (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> 5;
    }

    private final Item parseItem(byte[] bArr, int i10) {
        int type = getType(bArr, i10);
        Arg arg = getArg(bArr, i10);
        System.out.println((Object) ("Type " + type + ' ' + arg.getArg() + ' ' + arg.getLen()));
        if (type == this.TYPE_UNSIGNED_INT) {
            return new Item(Long.valueOf(arg.getArg()), arg.getLen());
        }
        if (type == this.TYPE_NEGATIVE_INT) {
            return new Item(Long.valueOf((-1) - arg.getArg()), arg.getLen());
        }
        if (type == this.TYPE_BYTE_STRING) {
            return new Item(n.i1(bArr, e.v(arg.getLen() + i10, i10 + arg.getLen() + ((int) arg.getArg()))), arg.getLen() + ((int) arg.getArg()));
        }
        if (type == this.TYPE_TEXT_STRING) {
            return new Item(new String(n.i1(bArr, e.v(arg.getLen() + i10, i10 + arg.getLen() + ((int) arg.getArg()))), Charsets.UTF_8), arg.getLen() + ((int) arg.getArg()));
        }
        int i11 = 0;
        if (type == this.TYPE_ARRAY) {
            ArrayList arrayList = new ArrayList();
            int len = arg.getLen();
            int arg2 = (int) arg.getArg();
            while (i11 < arg2) {
                Item parseItem = parseItem(bArr, i10 + len);
                arrayList.add(parseItem.getItem());
                len += parseItem.getLen();
                i11++;
            }
            return new Item(CollectionsKt.d1(arrayList), len);
        } else if (type == this.TYPE_MAP) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int len2 = arg.getLen();
            int arg3 = (int) arg.getArg();
            while (i11 < arg3) {
                Item parseItem2 = parseItem(bArr, i10 + len2);
                int len3 = len2 + parseItem2.getLen();
                Item parseItem3 = parseItem(bArr, i10 + len3);
                len2 = len3 + parseItem3.getLen();
                linkedHashMap.put(parseItem2.getItem(), parseItem3.getItem());
                i11++;
            }
            return new Item(p0.x(linkedHashMap), len2);
        } else {
            throw new IllegalArgumentException("Bad type");
        }
    }

    @NotNull
    public final Object decode(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return parseItem(data, 0).getItem();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.LinkedHashMap, T] */
    @NotNull
    public final byte[] encode(@NotNull Object data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (data instanceof Number) {
            if (!(data instanceof Double)) {
                long longValue = ((Number) data).longValue();
                if (longValue >= 0) {
                    return createArg(this.TYPE_UNSIGNED_INT, longValue);
                }
                return createArg(this.TYPE_NEGATIVE_INT, (-1) - longValue);
            }
            throw new IllegalArgumentException("Don't support doubles yet");
        } else if (data instanceof byte[]) {
            byte[] bArr = (byte[]) data;
            return n.J(createArg(this.TYPE_BYTE_STRING, bArr.length), bArr);
        } else if (data instanceof String) {
            String str = (String) data;
            return n.J(createArg(this.TYPE_TEXT_STRING, str.length()), StringsKt.D(str));
        } else if (data instanceof List) {
            List list = (List) data;
            byte[] createArg = createArg(this.TYPE_ARRAY, list.size());
            for (Object obj : list) {
                Intrinsics.checkNotNull(obj);
                createArg = n.J(createArg, encode(obj));
            }
            return createArg;
        } else if (data instanceof Map) {
            Map map = (Map) data;
            byte[] createArg2 = createArg(this.TYPE_MAP, map.size());
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Intrinsics.checkNotNull(key);
                byte[] encode = encode(key);
                Object value = entry.getValue();
                Intrinsics.checkNotNull(value);
                ((Map) objectRef.element).put(encode, encode(value));
            }
            ArrayList arrayList = new ArrayList(((Map) objectRef.element).keySet());
            CollectionsKt.U0(arrayList, new Comparator() { // from class: q.a
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    int encode$lambda$0;
                    encode$lambda$0 = Cbor.encode$lambda$0(Ref.ObjectRef.this, (byte[]) obj2, (byte[]) obj3);
                    return encode$lambda$0;
                }
            });
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] key2 = (byte[]) it.next();
                Intrinsics.checkNotNullExpressionValue(key2, "key");
                byte[] J = n.J(createArg2, key2);
                Object obj2 = ((Map) objectRef.element).get(key2);
                Intrinsics.checkNotNull(obj2);
                createArg2 = n.J(J, (byte[]) obj2);
            }
            return createArg2;
        } else {
            throw new IllegalArgumentException("Bad type");
        }
    }

    public final int getTYPE_ARRAY() {
        return this.TYPE_ARRAY;
    }

    public final int getTYPE_BYTE_STRING() {
        return this.TYPE_BYTE_STRING;
    }

    public final int getTYPE_FLOAT() {
        return this.TYPE_FLOAT;
    }

    public final int getTYPE_MAP() {
        return this.TYPE_MAP;
    }

    public final int getTYPE_NEGATIVE_INT() {
        return this.TYPE_NEGATIVE_INT;
    }

    public final int getTYPE_TAG() {
        return this.TYPE_TAG;
    }

    public final int getTYPE_TEXT_STRING() {
        return this.TYPE_TEXT_STRING;
    }

    public final int getTYPE_UNSIGNED_INT() {
        return this.TYPE_UNSIGNED_INT;
    }
}
