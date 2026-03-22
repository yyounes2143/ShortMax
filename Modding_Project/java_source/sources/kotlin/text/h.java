package kotlin.text;

import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.MatchResult;
import kotlin.text.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Regex.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h implements MatchResult {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Matcher f61223a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f61224b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final g f61225c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private List<String> f61226d;

    /* compiled from: Regex.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends kotlin.collections.d<String> {
        a() {
        }

        @Override // kotlin.collections.b, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (!(obj instanceof String)) {
                return false;
            }
            return e((String) obj);
        }

        public /* bridge */ boolean e(String str) {
            return super.contains(str);
        }

        @Override // kotlin.collections.d, java.util.List
        /* renamed from: f */
        public String get(int i10) {
            String group = h.this.f().group(i10);
            if (group == null) {
                return "";
            }
            return group;
        }

        @Override // kotlin.collections.d, kotlin.collections.b
        public int getSize() {
            return h.this.f().groupCount() + 1;
        }

        public /* bridge */ int h(String str) {
            return super.indexOf(str);
        }

        public /* bridge */ int i(String str) {
            return super.lastIndexOf(str);
        }

        @Override // kotlin.collections.d, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (!(obj instanceof String)) {
                return -1;
            }
            return h((String) obj);
        }

        @Override // kotlin.collections.d, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (!(obj instanceof String)) {
                return -1;
            }
            return i((String) obj);
        }
    }

    /* compiled from: Regex.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends kotlin.collections.b<MatchGroup> implements g {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final MatchGroup h(b bVar, int i10) {
            return bVar.get(i10);
        }

        @Override // kotlin.collections.b, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            boolean z10;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = obj instanceof MatchGroup;
            }
            if (!z10) {
                return false;
            }
            return f((MatchGroup) obj);
        }

        public /* bridge */ boolean f(MatchGroup matchGroup) {
            return super.contains(matchGroup);
        }

        @Override // kotlin.text.g
        public MatchGroup get(int i10) {
            IntRange h10;
            h10 = k.h(h.this.f(), i10);
            if (h10.getStart().intValue() >= 0) {
                String group = h.this.f().group(i10);
                Intrinsics.checkNotNullExpressionValue(group, "group(...)");
                return new MatchGroup(group, h10);
            }
            return null;
        }

        @Override // kotlin.collections.b
        public int getSize() {
            return h.this.f().groupCount() + 1;
        }

        @Override // kotlin.collections.b, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<MatchGroup> iterator() {
            return kotlin.sequences.j.F(CollectionsKt.e0(CollectionsKt.o(this)), new Function1() { // from class: kotlin.text.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    MatchGroup h10;
                    h10 = h.b.h(h.b.this, ((Integer) obj).intValue());
                    return h10;
                }
            }).iterator();
        }
    }

    public h(@NotNull Matcher matcher, @NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(matcher, "matcher");
        Intrinsics.checkNotNullParameter(input, "input");
        this.f61223a = matcher;
        this.f61224b = input;
        this.f61225c = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final java.util.regex.MatchResult f() {
        return this.f61223a;
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public MatchResult.b a() {
        return MatchResult.a.a(this);
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public g b() {
        return this.f61225c;
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public List<String> c() {
        if (this.f61226d == null) {
            this.f61226d = new a();
        }
        List<String> list = this.f61226d;
        Intrinsics.checkNotNull(list);
        return list;
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public IntRange d() {
        IntRange g10;
        g10 = k.g(f());
        return g10;
    }

    @Override // kotlin.text.MatchResult
    @Nullable
    public MatchResult next() {
        int i10;
        MatchResult e10;
        int end = f().end();
        if (f().end() == f().start()) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i11 = end + i10;
        if (i11 <= this.f61224b.length()) {
            Matcher matcher = this.f61223a.pattern().matcher(this.f61224b);
            Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
            e10 = k.e(matcher, i11, this.f61224b);
            return e10;
        }
        return null;
    }
}
