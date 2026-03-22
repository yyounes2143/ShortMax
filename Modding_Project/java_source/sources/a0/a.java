package a0;

import android.content.Context;
import coil.ImageLoader;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Coil.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f36a = new a();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static ImageLoader f37b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static e f38c;

    private a() {
    }

    @NotNull
    public static final ImageLoader a(@NotNull Context context) {
        ImageLoader imageLoader = f37b;
        if (imageLoader == null) {
            return f36a.b(context);
        }
        return imageLoader;
    }

    private final synchronized ImageLoader b(Context context) {
        e eVar;
        ImageLoader a10;
        try {
            ImageLoader imageLoader = f37b;
            if (imageLoader != null) {
                return imageLoader;
            }
            e eVar2 = f38c;
            if (eVar2 != null) {
                a10 = eVar2.a();
                if (a10 == null) {
                }
                f38c = null;
                f37b = a10;
                return a10;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof e) {
                eVar = (e) applicationContext;
            } else {
                eVar = null;
            }
            if (eVar != null) {
                a10 = eVar.a();
            } else {
                a10 = f.a(context);
            }
            f38c = null;
            f37b = a10;
            return a10;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
