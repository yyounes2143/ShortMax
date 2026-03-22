package okhttp3;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import okhttp3.internal.cache.DiskLruCache;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: Cache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$urls$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,788:1\n1#2:789\n*E\n"})
/* loaded from: classes8.dex */
public final class Cache$urls$1 implements Iterator<String>, KMutableIterator {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Iterator<DiskLruCache.Snapshot> f63280a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f63281b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f63282c;

    @Override // java.util.Iterator
    @NotNull
    /* renamed from: a */
    public String next() {
        if (hasNext()) {
            String str = this.f63281b;
            Intrinsics.checkNotNull(str);
            this.f63281b = null;
            this.f63282c = true;
            return str;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f63281b != null) {
            return true;
        }
        this.f63282c = false;
        while (this.f63280a.hasNext()) {
            try {
                DiskLruCache.Snapshot next = this.f63280a.next();
                this.f63281b = Okio.buffer(next.g(0)).readUtf8LineStrict();
                b.a(next, null);
                return true;
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.f63282c) {
            this.f63280a.remove();
            return;
        }
        throw new IllegalStateException("remove() before next()");
    }
}
