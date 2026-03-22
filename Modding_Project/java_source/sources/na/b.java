package na;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nFileUploadBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUploadBuilder.kt\ncom/hades/aar/storage/base/FileUploadBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"})
/* loaded from: classes5.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private Function0<? extends Context> f62868a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private String f62869b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private String f62870c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private String f62871d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private d f62872e;

    public b() {
        this(null, null, null, null, null, null, 63, null);
    }

    @NotNull
    public final Function0<Context> b() {
        return this.f62868a;
    }

    @NotNull
    public final String c() {
        return this.f62870c;
    }

    @NotNull
    public final String d() {
        return this.f62871d;
    }

    @Nullable
    public final c e() {
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (Intrinsics.areEqual(this.f62868a, bVar.f62868a) && Intrinsics.areEqual(this.f62869b, bVar.f62869b) && Intrinsics.areEqual(this.f62870c, bVar.f62870c) && Intrinsics.areEqual(this.f62871d, bVar.f62871d) && Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual(this.f62872e, bVar.f62872e)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final d f() {
        return this.f62872e;
    }

    @NotNull
    public final String g() {
        return this.f62869b;
    }

    @NotNull
    public final b h(@NotNull final Context v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        this.f62868a = new Function0() { // from class: na.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Context i10;
                i10 = b.i(v10);
                return i10;
            }
        };
        return this;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f62869b.hashCode();
        int hashCode3 = this.f62870c.hashCode();
        int hashCode4 = (this.f62871d.hashCode() + ((hashCode3 + ((hashCode2 + (this.f62868a.hashCode() * 31)) * 31)) * 31)) * 961;
        d dVar = this.f62872e;
        if (dVar == null) {
            hashCode = 0;
        } else {
            hashCode = dVar.hashCode();
        }
        return hashCode4 + hashCode;
    }

    @NotNull
    public final b j(@NotNull String v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        this.f62870c = v10;
        return this;
    }

    @NotNull
    public final b k(@NotNull String v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        this.f62871d = v10;
        return this;
    }

    @NotNull
    public final b l(@NotNull d v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        this.f62872e = v10;
        return this;
    }

    @NotNull
    public final b m(@NotNull String v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        this.f62869b = v10;
        return this;
    }

    @NotNull
    public String toString() {
        return "FileUploadBuilder(context=" + this.f62868a + ", remoteDir=" + this.f62869b + ", fileName=" + this.f62870c + ", localPath=" + this.f62871d + ", onProgressChangedListener=" + ((Object) null) + ", onStateChangedListener=" + this.f62872e + ')';
    }

    public b(@NotNull Function0<? extends Context> context, @NotNull String remoteDir, @NotNull String fileName, @NotNull String localPath, @Nullable c cVar, @Nullable d dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(remoteDir, "remoteDir");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        this.f62868a = context;
        this.f62869b = remoteDir;
        this.f62870c = fileName;
        this.f62871d = localPath;
        this.f62872e = dVar;
    }

    public /* synthetic */ b(Function0 function0, String str, String str2, String str3, c cVar, d dVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? uu.a.f68634a : function0, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) == 0 ? str3 : "", (i10 & 16) != 0 ? null : cVar, (i10 & 32) != 0 ? null : dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context i(Context context) {
        return context;
    }
}
