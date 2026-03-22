package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.State;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FontFamily.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public abstract class FontFamily {
    private final boolean canLoadSynchronously;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final SystemFontFamily Default = new DefaultFontFamily();
    @NotNull
    private static final GenericFontFamily SansSerif = new GenericFontFamily(C.SANS_SERIF_NAME, "FontFamily.SansSerif");
    @NotNull
    private static final GenericFontFamily Serif = new GenericFontFamily(C.SERIF_NAME, "FontFamily.Serif");
    @NotNull
    private static final GenericFontFamily Monospace = new GenericFontFamily("monospace", "FontFamily.Monospace");
    @NotNull
    private static final GenericFontFamily Cursive = new GenericFontFamily("cursive", "FontFamily.Cursive");

    /* compiled from: FontFamily.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GenericFontFamily getCursive() {
            return FontFamily.Cursive;
        }

        @NotNull
        public final SystemFontFamily getDefault() {
            return FontFamily.Default;
        }

        @NotNull
        public final GenericFontFamily getMonospace() {
            return FontFamily.Monospace;
        }

        @NotNull
        public final GenericFontFamily getSansSerif() {
            return FontFamily.SansSerif;
        }

        @NotNull
        public final GenericFontFamily getSerif() {
            return FontFamily.Serif;
        }

        private Companion() {
        }
    }

    /* compiled from: FontFamily.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface Resolver {
        /* renamed from: resolve-DPcqOEQ$default  reason: not valid java name */
        static /* synthetic */ State m3753resolveDPcqOEQ$default(Resolver resolver, FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, int i12, Object obj) {
            if (obj == null) {
                if ((i12 & 1) != 0) {
                    fontFamily = null;
                }
                if ((i12 & 2) != 0) {
                    fontWeight = FontWeight.Companion.getNormal();
                }
                if ((i12 & 4) != 0) {
                    i10 = FontStyle.Companion.m3780getNormal_LCdwA();
                }
                if ((i12 & 8) != 0) {
                    i11 = FontSynthesis.Companion.m3790getAllGVVA2EU();
                }
                return resolver.mo3754resolveDPcqOEQ(fontFamily, fontWeight, i10, i11);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resolve-DPcqOEQ");
        }

        @Nullable
        Object preload(@NotNull FontFamily fontFamily, @NotNull rs.c<? super Unit> cVar);

        @NotNull
        /* renamed from: resolve-DPcqOEQ  reason: not valid java name */
        State<Object> mo3754resolveDPcqOEQ(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11);
    }

    public /* synthetic */ FontFamily(boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10);
    }

    @ms.c
    public final boolean getCanLoadSynchronously() {
        return this.canLoadSynchronously;
    }

    private FontFamily(boolean z10) {
        this.canLoadSynchronously = z10;
    }

    public static /* synthetic */ void getCanLoadSynchronously$annotations() {
    }
}
