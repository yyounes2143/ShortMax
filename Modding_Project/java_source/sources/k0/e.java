package k0;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import coil.memory.MemoryCache;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WeakMemoryCache.kt */
@Metadata
/* loaded from: classes2.dex */
public final class e implements g {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f60564c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<MemoryCache.Key, ArrayList<b>> f60565a = new LinkedHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private int f60566b;

    /* compiled from: WeakMemoryCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: WeakMemoryCache.kt */
    @Metadata
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f60567a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<Bitmap> f60568b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Map<String, Object> f60569c;

        /* renamed from: d  reason: collision with root package name */
        private final int f60570d;

        public b(int i10, @NotNull WeakReference<Bitmap> weakReference, @NotNull Map<String, ? extends Object> map, int i11) {
            this.f60567a = i10;
            this.f60568b = weakReference;
            this.f60569c = map;
            this.f60570d = i11;
        }

        @NotNull
        public final WeakReference<Bitmap> a() {
            return this.f60568b;
        }

        @NotNull
        public final Map<String, Object> b() {
            return this.f60569c;
        }

        public final int c() {
            return this.f60567a;
        }

        public final int d() {
            return this.f60570d;
        }
    }

    private final void e() {
        int i10 = this.f60566b;
        this.f60566b = i10 + 1;
        if (i10 >= 10) {
            d();
        }
    }

    @Override // k0.g
    public synchronized void a(int i10) {
        if (i10 >= 10 && i10 != 20) {
            d();
        }
    }

    @Override // k0.g
    @Nullable
    public synchronized MemoryCache.b b(@NotNull MemoryCache.Key key) {
        MemoryCache.b bVar;
        try {
            ArrayList<b> arrayList = this.f60565a.get(key);
            MemoryCache.b bVar2 = null;
            if (arrayList == null) {
                return null;
            }
            int size = arrayList.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    break;
                }
                b bVar3 = arrayList.get(i10);
                Bitmap bitmap = bVar3.a().get();
                if (bitmap != null) {
                    bVar = new MemoryCache.b(bitmap, bVar3.b());
                } else {
                    bVar = null;
                }
                if (bVar != null) {
                    bVar2 = bVar;
                    break;
                }
                i10++;
            }
            e();
            return bVar2;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // k0.g
    public synchronized void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i10) {
        try {
            LinkedHashMap<MemoryCache.Key, ArrayList<b>> linkedHashMap = this.f60565a;
            ArrayList<b> arrayList = linkedHashMap.get(key);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                linkedHashMap.put(key, arrayList);
            }
            ArrayList<b> arrayList2 = arrayList;
            int identityHashCode = System.identityHashCode(bitmap);
            b bVar = new b(identityHashCode, new WeakReference(bitmap), map, i10);
            int size = arrayList2.size();
            int i11 = 0;
            while (true) {
                if (i11 < size) {
                    b bVar2 = arrayList2.get(i11);
                    if (i10 >= bVar2.d()) {
                        if (bVar2.c() == identityHashCode && bVar2.a().get() == bitmap) {
                            arrayList2.set(i11, bVar);
                        } else {
                            arrayList2.add(i11, bVar);
                        }
                    } else {
                        i11++;
                    }
                } else {
                    arrayList2.add(bVar);
                    break;
                }
            }
            e();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @VisibleForTesting
    public final void d() {
        Bitmap bitmap;
        WeakReference<Bitmap> a10;
        this.f60566b = 0;
        Iterator<ArrayList<b>> it = this.f60565a.values().iterator();
        while (it.hasNext()) {
            ArrayList<b> next = it.next();
            if (next.size() <= 1) {
                b bVar = (b) CollectionsKt.firstOrNull(next);
                if (bVar != null && (a10 = bVar.a()) != null) {
                    bitmap = a10.get();
                } else {
                    bitmap = null;
                }
                if (bitmap == null) {
                    it.remove();
                }
            } else {
                int size = next.size();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    int i12 = i11 - i10;
                    if (next.get(i12).a().get() == null) {
                        next.remove(i12);
                        i10++;
                    }
                }
                if (next.isEmpty()) {
                    it.remove();
                }
            }
        }
    }
}
