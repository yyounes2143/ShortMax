package com.amazonaws.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.util.DateUtils;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2.dex */
public class SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller implements Unmarshaller<Date, JsonUnmarshallerContext> {

    /* renamed from: b  reason: collision with root package name */
    private static SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller f6389b;

    /* renamed from: a  reason: collision with root package name */
    private final TimestampFormat f6390a;

    private SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller(TimestampFormat timestampFormat) {
        this.f6390a = timestampFormat;
    }

    public static SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller b() {
        if (f6389b == null) {
            f6389b = new SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller(TimestampFormat.UNIX_TIMESTAMP);
        }
        return f6389b;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public Date a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        String h10 = jsonUnmarshallerContext.a().h();
        if (h10 == null) {
            return null;
        }
        try {
            int i10 = SimpleTypeJsonUnmarshallers$1.f6387a[this.f6390a.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    return new Date(NumberFormat.getInstance(new Locale("en")).parse(h10).longValue() * 1000);
                }
                return DateUtils.i(h10);
            }
            return DateUtils.h(h10);
        } catch (IllegalArgumentException e10) {
            e = e10;
            throw new AmazonClientException("Unable to parse date '" + h10 + "':  " + e.getMessage(), e);
        } catch (ParseException e11) {
            e = e11;
            throw new AmazonClientException("Unable to parse date '" + h10 + "':  " + e.getMessage(), e);
        }
    }
}
