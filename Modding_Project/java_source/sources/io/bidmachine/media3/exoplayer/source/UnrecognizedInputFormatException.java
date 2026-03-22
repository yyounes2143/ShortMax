package io.bidmachine.media3.exoplayer.source;

import android.net.Uri;
import ao.n0;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.ParserException;
import java.util.List;
/* loaded from: classes8.dex */
public class UnrecognizedInputFormatException extends ParserException {

    /* renamed from: c  reason: collision with root package name */
    public final Uri f56723c;

    /* renamed from: d  reason: collision with root package name */
    public final ImmutableList<n0> f56724d;

    public UnrecognizedInputFormatException(String str, Uri uri, List<? extends n0> list) {
        super(str, null, false, 1);
        this.f56723c = uri;
        this.f56724d = ImmutableList.u(list);
    }
}
