package io.ktor.utils.io.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: RingBufferCapacity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRingBufferCapacity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,152:1\n24#1:188\n12#1:189\n12#1,7:191\n24#1:198\n371#2,4:153\n360#2,4:157\n371#2,4:161\n371#2,4:165\n360#2,4:169\n371#2,4:173\n360#2,4:177\n360#2,4:181\n360#2,3:185\n363#2:190\n*S KotlinDebug\n*F\n+ 1 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n*L\n130#1:188\n130#1:189\n149#1:191,7\n150#1:198\n43#1:153,4\n51#1:157,4\n59#1:161,4\n68#1:165,4\n76#1:169,4\n84#1:173,4\n93#1:177,4\n105#1:181,4\n129#1:185,3\n129#1:190\n*E\n"})
/* loaded from: classes8.dex */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f59572b = AtomicIntegerFieldUpdater.newUpdater(h.class, "_availableForRead$internal");

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f59573c = AtomicIntegerFieldUpdater.newUpdater(h.class, "_availableForWrite$internal");

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ AtomicIntegerFieldUpdater f59574d = AtomicIntegerFieldUpdater.newUpdater(h.class, "_pendingToFlush");
    @NotNull
    public volatile /* synthetic */ int _availableForWrite$internal;

    /* renamed from: a  reason: collision with root package name */
    private final int f59575a;
    @NotNull
    public volatile /* synthetic */ int _availableForRead$internal = 0;
    @NotNull
    volatile /* synthetic */ int _pendingToFlush = 0;

    public h(int i10) {
        this.f59575a = i10;
        this._availableForWrite$internal = i10;
    }

    private final Void b(int i10, int i11, int i12) {
        throw new IllegalArgumentException("Completed read overflow: " + i10 + " + " + i12 + " = " + i11 + " > " + this.f59575a);
    }

    private final Void d(int i10, int i11) {
        throw new IllegalArgumentException("Complete write overflow: " + i10 + " + " + i11 + " > " + this.f59575a);
    }

    public final void a(int i10) {
        int i11;
        int i12;
        do {
            i11 = this._availableForWrite$internal;
            i12 = i11 + i10;
            if (i12 > this.f59575a) {
                b(i11, i12, i10);
                throw new KotlinNothingValueException();
            }
        } while (!f59573c.compareAndSet(this, i11, i12));
    }

    public final void c(int i10) {
        int i11;
        int i12;
        do {
            i11 = this._pendingToFlush;
            i12 = i11 + i10;
            if (i12 > this.f59575a) {
                d(i11, i10);
                throw new KotlinNothingValueException();
            }
        } while (!f59574d.compareAndSet(this, i11, i12));
    }

    public final boolean e() {
        int andSet = f59574d.getAndSet(this, 0);
        if (andSet == 0) {
            if (this._availableForRead$internal <= 0) {
                return false;
            }
            return true;
        } else if (f59572b.addAndGet(this, andSet) <= 0) {
            return false;
        } else {
            return true;
        }
    }

    public final void f() {
        f59573c.getAndSet(this, 0);
    }

    public final boolean g() {
        if (this._availableForWrite$internal == this.f59575a) {
            return true;
        }
        return false;
    }

    public final boolean h() {
        if (this._availableForWrite$internal == 0) {
            return true;
        }
        return false;
    }

    public final void i() {
        this._availableForRead$internal = this.f59575a;
        this._availableForWrite$internal = 0;
        this._pendingToFlush = 0;
    }

    public final void j() {
        this._availableForRead$internal = 0;
        this._pendingToFlush = 0;
        this._availableForWrite$internal = this.f59575a;
    }

    public final boolean k() {
        int i10;
        do {
            i10 = this._availableForWrite$internal;
            if (this._pendingToFlush > 0 || this._availableForRead$internal > 0 || i10 != this.f59575a) {
                return false;
            }
        } while (!f59573c.compareAndSet(this, i10, 0));
        return true;
    }

    public final int l(int i10) {
        int i11;
        int min;
        do {
            i11 = this._availableForRead$internal;
            min = Math.min(i10, i11);
            if (min == 0) {
                return 0;
            }
        } while (!f59572b.compareAndSet(this, i11, i11 - min));
        return Math.min(i10, i11);
    }

    public final boolean m(int i10) {
        int i11;
        do {
            i11 = this._availableForRead$internal;
            if (i11 < i10) {
                return false;
            }
        } while (!f59572b.compareAndSet(this, i11, i11 - i10));
        return true;
    }

    public final int n(int i10) {
        int i11;
        int min;
        do {
            i11 = this._availableForWrite$internal;
            min = Math.min(i10, i11);
            if (min == 0) {
                return 0;
            }
        } while (!f59573c.compareAndSet(this, i11, i11 - min));
        return Math.min(i10, i11);
    }

    @NotNull
    public String toString() {
        return "RingBufferCapacity[read: " + this._availableForRead$internal + ", write: " + this._availableForWrite$internal + ", flush: " + this._pendingToFlush + ", capacity: " + this.f59575a + ']';
    }
}
