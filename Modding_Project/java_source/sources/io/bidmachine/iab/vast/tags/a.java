package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import android.util.Xml;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.xmlpull.v1.XmlPullParser;
import tm.d;
/* loaded from: classes7.dex */
public class a {
    @Nullable
    public static VastTag a(@Nullable InputStream inputStream) {
        if (inputStream != null) {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, null);
            int next = newPullParser.next();
            if (next != 1) {
                while (next != 3 && next != 1) {
                    if (newPullParser.getEventType() != 2) {
                        next = newPullParser.next();
                    } else if (VastXmlTag.D(newPullParser.getName(), "VAST")) {
                        return new VastTag(newPullParser);
                    } else {
                        next = newPullParser.next();
                    }
                }
                return null;
            }
            throw new Exception();
        }
        throw new Exception();
    }

    @Nullable
    public static VastTag b(@Nullable String str) {
        ByteArrayInputStream byteArrayInputStream;
        if (!TextUtils.isEmpty(str)) {
            ByteArrayInputStream byteArrayInputStream2 = null;
            try {
                try {
                    byteArrayInputStream = new ByteArrayInputStream(str.getBytes(Charset.defaultCharset().name()));
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayInputStream = byteArrayInputStream2;
            }
            try {
                VastTag a10 = a(byteArrayInputStream);
                try {
                    byteArrayInputStream.close();
                } catch (Exception e11) {
                    d.c("VastXmlParser", e11);
                }
                return a10;
            } catch (Exception e12) {
                e = e12;
                byteArrayInputStream2 = byteArrayInputStream;
                d.c("VastXmlParser", e);
                throw new Exception();
            } catch (Throwable th3) {
                th = th3;
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Exception e13) {
                        d.c("VastXmlParser", e13);
                    }
                }
                throw th;
            }
        }
        throw new Exception();
    }
}
