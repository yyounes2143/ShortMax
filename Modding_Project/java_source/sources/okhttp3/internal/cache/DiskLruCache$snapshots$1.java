package okhttp3.internal.cache;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import okhttp3.internal.cache.DiskLruCache;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiskLruCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$snapshots$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1065:1\n1#2:1066\n*E\n"})
/* loaded from: classes8.dex */
public final class DiskLruCache$snapshots$1 implements Iterator<DiskLruCache.Snapshot>, KMutableIterator {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Iterator<DiskLruCache.Entry> f63710a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private DiskLruCache.Snapshot f63711b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private DiskLruCache.Snapshot f63712c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ DiskLruCache f63713d;

    @Override // java.util.Iterator
    @NotNull
    /* renamed from: a */
    public DiskLruCache.Snapshot next() {
        if (hasNext()) {
            DiskLruCache.Snapshot snapshot = this.f63711b;
            this.f63712c = snapshot;
            this.f63711b = null;
            Intrinsics.checkNotNull(snapshot);
            return snapshot;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        DiskLruCache.Snapshot r10;
        if (this.f63711b != null) {
            return true;
        }
        DiskLruCache diskLruCache = this.f63713d;
        synchronized (diskLruCache) {
            if (diskLruCache.t()) {
                return false;
            }
            while (this.f63710a.hasNext()) {
                DiskLruCache.Entry next = this.f63710a.next();
                if (next != null && (r10 = next.r()) != null) {
                    this.f63711b = r10;
                    return true;
                }
            }
            Unit unit = Unit.f60915a;
            return false;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        DiskLruCache.Snapshot snapshot = this.f63712c;
        if (snapshot != null) {
            try {
                this.f63713d.Z(snapshot.k());
            } catch (IOException unused) {
            } catch (Throwable th2) {
                this.f63712c = null;
                throw th2;
            }
            this.f63712c = null;
            return;
        }
        throw new IllegalStateException("remove() before next()");
    }
}
