package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
/* loaded from: classes4.dex */
public class UnrecognizedInputFormatException extends ParserException {

    /* renamed from: c  reason: collision with root package name */
    public final Uri f18212c;

    public UnrecognizedInputFormatException(String str, Uri uri) {
        super(str, null, false, 1);
        this.f18212c = uri;
    }
}
