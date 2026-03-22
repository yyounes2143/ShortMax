package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Strings.kt */
@Metadata
/* loaded from: classes8.dex */
final class f implements Iterator<String>, KMappedMarker {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final a f61217f = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CharSequence f61218a;

    /* renamed from: b  reason: collision with root package name */
    private int f61219b;

    /* renamed from: c  reason: collision with root package name */
    private int f61220c;

    /* renamed from: d  reason: collision with root package name */
    private int f61221d;

    /* renamed from: e  reason: collision with root package name */
    private int f61222e;

    /* compiled from: Strings.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public f(@NotNull CharSequence string) {
        Intrinsics.checkNotNullParameter(string, "string");
        this.f61218a = string;
    }

    @Override // java.util.Iterator
    @NotNull
    /* renamed from: a */
    public String next() {
        if (hasNext()) {
            this.f61219b = 0;
            int i10 = this.f61221d;
            int i11 = this.f61220c;
            this.f61220c = this.f61222e + i10;
            return this.f61218a.subSequence(i11, i10).toString();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i10;
        int i11 = this.f61219b;
        if (i11 != 0) {
            if (i11 != 1) {
                return false;
            }
            return true;
        }
        int i12 = 2;
        if (this.f61222e < 0) {
            this.f61219b = 2;
            return false;
        }
        int length = this.f61218a.length();
        int length2 = this.f61218a.length();
        for (int i13 = this.f61220c; i13 < length2; i13++) {
            char charAt = this.f61218a.charAt(i13);
            if (charAt == '\n' || charAt == '\r') {
                i12 = (charAt == '\r' && (i10 = i13 + 1) < this.f61218a.length() && this.f61218a.charAt(i10) == '\n') ? 1 : 1;
                length = i13;
                this.f61219b = 1;
                this.f61222e = i12;
                this.f61221d = length;
                return true;
            }
        }
        i12 = -1;
        this.f61219b = 1;
        this.f61222e = i12;
        this.f61221d = length;
        return true;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
