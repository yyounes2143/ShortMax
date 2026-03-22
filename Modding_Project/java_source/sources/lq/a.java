package lq;

import android.graphics.Bitmap;
import android.net.Uri;
import androidx.annotation.MainThread;
import io.bidmachine.rendering.model.MediaSource;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import rq.t;
@Metadata
/* loaded from: classes8.dex */
public interface a {

    @Metadata
    /* renamed from: lq.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0869a<SuccessType> {
        @MainThread
        void a(@NotNull t tVar);

        @MainThread
        void onSuccess(SuccessType successtype);
    }

    void a(@NotNull MediaSource mediaSource, @NotNull InterfaceC0869a<String> interfaceC0869a);

    void b(@NotNull MediaSource mediaSource, @NotNull InterfaceC0869a<Bitmap> interfaceC0869a);

    void c(@NotNull MediaSource mediaSource, @NotNull InterfaceC0869a<Uri> interfaceC0869a);
}
