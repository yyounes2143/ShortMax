package coil.memory;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;
import java.util.Map;
import k0.d;
import k0.e;
import k0.f;
import k0.g;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.i;
/* compiled from: MemoryCache.kt */
@Metadata
/* loaded from: classes2.dex */
public interface MemoryCache {

    /* compiled from: MemoryCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f4061a;

        /* renamed from: b  reason: collision with root package name */
        private double f4062b;

        /* renamed from: c  reason: collision with root package name */
        private int f4063c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f4064d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f4065e = true;

        public a(@NotNull Context context) {
            this.f4061a = context;
            this.f4062b = i.e(context);
        }

        @NotNull
        public final MemoryCache a() {
            g bVar;
            f aVar;
            int i10;
            if (this.f4065e) {
                bVar = new e();
            } else {
                bVar = new k0.b();
            }
            if (this.f4064d) {
                double d10 = this.f4062b;
                if (d10 > 0.0d) {
                    i10 = i.c(this.f4061a, d10);
                } else {
                    i10 = this.f4063c;
                }
                if (i10 > 0) {
                    aVar = new RealStrongMemoryCache(i10, bVar);
                } else {
                    aVar = new k0.a(bVar);
                }
            } else {
                aVar = new k0.a(bVar);
            }
            return new d(aVar, bVar);
        }
    }

    /* compiled from: MemoryCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Bitmap f4066a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, Object> f4067b;

        public b(@NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
            this.f4066a = bitmap;
            this.f4067b = map;
        }

        @NotNull
        public final Bitmap a() {
            return this.f4066a;
        }

        @NotNull
        public final Map<String, Object> b() {
            return this.f4067b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (Intrinsics.areEqual(this.f4066a, bVar.f4066a) && Intrinsics.areEqual(this.f4067b, bVar.f4067b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (this.f4066a.hashCode() * 31) + this.f4067b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Value(bitmap=" + this.f4066a + ", extras=" + this.f4067b + ')';
        }
    }

    void a(int i10);

    @Nullable
    b b(@NotNull Key key);

    void c(@NotNull Key key, @NotNull b bVar);

    /* compiled from: MemoryCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Key implements Parcelable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f4059a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, String> f4060b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static final b f4058c = new b(null);
        @Deprecated
        @NotNull
        public static final Parcelable.Creator<Key> CREATOR = new a();

        /* compiled from: MemoryCache.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class a implements Parcelable.Creator<Key> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: a */
            public Key createFromParcel(@NotNull Parcel parcel) {
                String readString = parcel.readString();
                Intrinsics.checkNotNull(readString);
                int readInt = parcel.readInt();
                LinkedHashMap linkedHashMap = new LinkedHashMap(readInt);
                for (int i10 = 0; i10 < readInt; i10++) {
                    String readString2 = parcel.readString();
                    Intrinsics.checkNotNull(readString2);
                    String readString3 = parcel.readString();
                    Intrinsics.checkNotNull(readString3);
                    linkedHashMap.put(readString2, readString3);
                }
                return new Key(readString, linkedHashMap);
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: b */
            public Key[] newArray(int i10) {
                return new Key[i10];
            }
        }

        /* compiled from: MemoryCache.kt */
        @Metadata
        /* loaded from: classes2.dex */
        private static final class b {
            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private b() {
            }
        }

        public Key(@NotNull String str, @NotNull Map<String, String> map) {
            this.f4059a = str;
            this.f4060b = map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Key b(Key key, String str, Map map, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = key.f4059a;
            }
            if ((i10 & 2) != 0) {
                map = key.f4060b;
            }
            return key.a(str, map);
        }

        @NotNull
        public final Key a(@NotNull String str, @NotNull Map<String, String> map) {
            return new Key(str, map);
        }

        @NotNull
        public final Map<String, String> c() {
            return this.f4060b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (Intrinsics.areEqual(this.f4059a, key.f4059a) && Intrinsics.areEqual(this.f4060b, key.f4060b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (this.f4059a.hashCode() * 31) + this.f4060b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Key(key=" + this.f4059a + ", extras=" + this.f4060b + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i10) {
            parcel.writeString(this.f4059a);
            parcel.writeInt(this.f4060b.size());
            for (Map.Entry<String, String> entry : this.f4060b.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeString(entry.getValue());
            }
        }

        public /* synthetic */ Key(String str, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i10 & 2) != 0 ? p0.i() : map);
        }
    }
}
