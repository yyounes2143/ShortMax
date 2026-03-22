package coil.decode;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BitmapFactoryDecoder.kt */
@Metadata
@d(c = "coil.decode.BitmapFactoryDecoder", f = "BitmapFactoryDecoder.kt", l = {VideoRef.VALUE_VIDEO_REF_CATEGORY, 46}, m = "decode")
/* loaded from: classes2.dex */
public final class BitmapFactoryDecoder$decode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f3893h;

    /* renamed from: i  reason: collision with root package name */
    Object f3894i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f3895j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ BitmapFactoryDecoder f3896k;

    /* renamed from: l  reason: collision with root package name */
    int f3897l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapFactoryDecoder$decode$1(BitmapFactoryDecoder bitmapFactoryDecoder, c<? super BitmapFactoryDecoder$decode$1> cVar) {
        super(cVar);
        this.f3896k = bitmapFactoryDecoder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f3895j = obj;
        this.f3897l |= Integer.MIN_VALUE;
        return this.f3896k.a(this);
    }
}
