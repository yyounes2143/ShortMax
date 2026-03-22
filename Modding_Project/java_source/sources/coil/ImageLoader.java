package coil;

import a0.b;
import a0.c;
import android.content.Context;
import coil.ImageLoader;
import coil.memory.MemoryCache;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import m0.a;
import m0.f;
import m0.g;
import ms.i;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.h;
import r0.n;
import r0.r;
/* compiled from: ImageLoader.kt */
@Metadata
/* loaded from: classes2.dex */
public interface ImageLoader {

    /* compiled from: ImageLoader.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f3726a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private a f3727b = h.b();
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private i<? extends MemoryCache> f3728c = null;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private i<? extends e0.a> f3729d = null;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private i<? extends Call.Factory> f3730e = null;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private c.d f3731f = null;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private b f3732g = null;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private n f3733h = new n(false, false, false, 0, null, 31, null);

        public Builder(@NotNull Context context) {
            this.f3726a = context.getApplicationContext();
        }

        @NotNull
        public final ImageLoader b() {
            Context context = this.f3726a;
            a aVar = this.f3727b;
            i<? extends MemoryCache> iVar = this.f3728c;
            if (iVar == null) {
                iVar = kotlin.c.b(new Function0<MemoryCache>() { // from class: coil.ImageLoader$Builder$build$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    /* renamed from: b */
                    public final MemoryCache invoke() {
                        Context context2;
                        context2 = ImageLoader.Builder.this.f3726a;
                        return new MemoryCache.a(context2).a();
                    }
                });
            }
            i<? extends MemoryCache> iVar2 = iVar;
            i<? extends e0.a> iVar3 = this.f3729d;
            if (iVar3 == null) {
                iVar3 = kotlin.c.b(new Function0<e0.a>() { // from class: coil.ImageLoader$Builder$build$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    /* renamed from: b */
                    public final e0.a invoke() {
                        Context context2;
                        r rVar = r.f65466a;
                        context2 = ImageLoader.Builder.this.f3726a;
                        return rVar.a(context2);
                    }
                });
            }
            i<? extends e0.a> iVar4 = iVar3;
            i<? extends Call.Factory> iVar5 = this.f3730e;
            if (iVar5 == null) {
                iVar5 = kotlin.c.b(new Function0<OkHttpClient>() { // from class: coil.ImageLoader$Builder$build$3
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final OkHttpClient invoke() {
                        return new OkHttpClient();
                    }
                });
            }
            i<? extends Call.Factory> iVar6 = iVar5;
            c.d dVar = this.f3731f;
            if (dVar == null) {
                dVar = c.d.f53b;
            }
            c.d dVar2 = dVar;
            b bVar = this.f3732g;
            if (bVar == null) {
                bVar = new b();
            }
            return new RealImageLoader(context, aVar, iVar2, iVar4, iVar6, dVar2, bVar, this.f3733h, null);
        }
    }

    @Nullable
    Object a(@NotNull f fVar, @NotNull rs.c<? super g> cVar);

    @NotNull
    m0.c b(@NotNull f fVar);

    @NotNull
    a c();

    @Nullable
    MemoryCache d();

    @NotNull
    b getComponents();
}
