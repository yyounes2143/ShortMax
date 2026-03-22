package zd;

import com.startshorts.androidplayer.log.Logger;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MemoryLogger.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMemoryLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryLogger.kt\ncom/startshorts/androidplayer/log/MemoryLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1#2:52\n1863#3,2:53\n*S KotlinDebug\n*F\n+ 1 MemoryLogger.kt\ncom/startshorts/androidplayer/log/MemoryLogger\n*L\n28#1:53,2\n*E\n"})
/* loaded from: classes6.dex */
public final class d implements c {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f71636b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<b> f71637a = new ArrayList();

    /* compiled from: MemoryLogger.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MemoryLogger.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f71638a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f71639b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f71640c;

        public b(int i10, @Nullable String str, @Nullable String str2) {
            this.f71638a = i10;
            this.f71639b = str;
            this.f71640c = str2;
        }

        @Nullable
        public final String a() {
            return this.f71640c;
        }

        public final int b() {
            return this.f71638a;
        }

        @Nullable
        public final String c() {
            return this.f71639b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f71638a == bVar.f71638a && Intrinsics.areEqual(this.f71639b, bVar.f71639b) && Intrinsics.areEqual(this.f71640c, bVar.f71640c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.f71638a) * 31;
            String str = this.f71639b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            String str2 = this.f71640c;
            if (str2 != null) {
                i10 = str2.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "LogInfo(logLevel=" + this.f71638a + ", tag=" + this.f71639b + ", info=" + this.f71640c + ')';
        }
    }

    @Override // zd.c
    public void a(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        e(str, str2);
    }

    @NotNull
    public final List<b> b() {
        return this.f71637a;
    }

    public final void c() {
        ArrayList<b> arrayList = new ArrayList();
        arrayList.addAll(this.f71637a);
        for (b bVar : arrayList) {
            int b10 = bVar.b();
            if (b10 != 2) {
                if (b10 == 4) {
                    Logger logger = Logger.f41511a;
                    String c10 = bVar.c();
                    logger.d(0, c10, "MemoryLogger -> " + bVar.a());
                }
            } else {
                Logger logger2 = Logger.f41511a;
                String c11 = bVar.c();
                logger2.g(0, c11, "MemoryLogger -> " + bVar.a());
            }
        }
        arrayList.clear();
        this.f71637a.clear();
    }

    @Override // zd.c
    public void e(@Nullable String str, @Nullable String str2) {
        this.f71637a.add(new b(4, str, str2));
    }

    @Override // zd.c
    public void i(@Nullable String str, @Nullable String str2) {
        this.f71637a.add(new b(2, str, str2));
    }

    @Override // zd.c
    public int type() {
        return 0;
    }
}
