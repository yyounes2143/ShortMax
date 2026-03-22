package y3;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultCloseableXml.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDefaultCloseableXml.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultCloseableXml.kt\ncom/facebook/imagepipeline/image/DefaultCloseableXml\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"})
/* loaded from: classes3.dex */
public final class j extends h implements g {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Drawable f70616d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f70617e;

    public j(@Nullable Drawable drawable) {
        this.f70616d = drawable;
    }

    @Override // y3.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f70616d = null;
        this.f70617e = true;
    }

    @Override // y3.e, y3.m
    public int getHeight() {
        Drawable drawable = this.f70616d;
        if (drawable != null) {
            Integer valueOf = Integer.valueOf(drawable.getIntrinsicHeight());
            if (valueOf.intValue() < 0) {
                valueOf = null;
            }
            if (valueOf != null) {
                return valueOf.intValue();
            }
        }
        return 0;
    }

    @Override // y3.e
    public int getSizeInBytes() {
        return getWidth() * getHeight() * 4;
    }

    @Override // y3.e, y3.m
    public int getWidth() {
        Drawable drawable = this.f70616d;
        if (drawable != null) {
            Integer valueOf = Integer.valueOf(drawable.getIntrinsicWidth());
            if (valueOf.intValue() < 0) {
                valueOf = null;
            }
            if (valueOf != null) {
                return valueOf.intValue();
            }
        }
        return 0;
    }

    @Override // y3.e
    public boolean isClosed() {
        return this.f70617e;
    }

    @Override // y3.g
    @Nullable
    public Drawable u0() {
        Drawable.ConstantState constantState;
        Drawable drawable = this.f70616d;
        if (drawable != null && (constantState = drawable.getConstantState()) != null) {
            return constantState.newDrawable();
        }
        return null;
    }
}
