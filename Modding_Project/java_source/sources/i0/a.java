package i0;

import java.io.File;
import kotlin.Metadata;
import m0.j;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileKeyer.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a implements b<File> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f53275a;

    public a(boolean z10) {
        this.f53275a = z10;
    }

    @Override // i0.b
    @NotNull
    /* renamed from: b */
    public String a(@NotNull File file, @NotNull j jVar) {
        if (this.f53275a) {
            return file.getPath() + ':' + file.lastModified();
        }
        return file.getPath();
    }
}
