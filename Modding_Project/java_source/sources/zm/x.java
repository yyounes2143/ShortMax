package zm;

import android.content.Context;
import io.bidmachine.media3.common.VideoFrameProcessingException;
import java.util.List;
import java.util.concurrent.Executor;
import zm.h0;
/* compiled from: PreviewingVideoGraph.java */
/* loaded from: classes8.dex */
public interface x extends h0 {

    /* compiled from: PreviewingVideoGraph.java */
    /* loaded from: classes8.dex */
    public interface a {
        x a(Context context, g gVar, j jVar, h0.a aVar, Executor executor, f0 f0Var, List<Object> list, long j10) throws VideoFrameProcessingException;

        boolean b();
    }

    void c(long j10);
}
