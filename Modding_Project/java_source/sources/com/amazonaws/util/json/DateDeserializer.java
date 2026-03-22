package com.amazonaws.util.json;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public class DateDeserializer implements JsonDeserializer<Date>, JsonSerializer<Date> {

    /* renamed from: a  reason: collision with root package name */
    private SimpleDateFormat f6437a;

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f6438b;

    /* renamed from: c  reason: collision with root package name */
    private final SimpleDateFormat f6439c;

    @Override // com.google.gson.JsonDeserializer
    /* renamed from: a */
    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
        String asString = jsonElement.getAsString();
        for (String str : this.f6438b) {
            try {
                Date date = new Date();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
                this.f6437a = simpleDateFormat;
                date.setTime(simpleDateFormat.parse(asString).getTime());
                return date;
            } catch (ParseException unused) {
            }
        }
        try {
            return DateFormat.getDateInstance(2).parse(asString);
        } catch (ParseException e10) {
            throw new JsonParseException(e10.getMessage(), e10);
        }
    }

    @Override // com.google.gson.JsonSerializer
    /* renamed from: b */
    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonPrimitive jsonPrimitive;
        synchronized (this.f6439c) {
            jsonPrimitive = new JsonPrimitive(this.f6439c.format(date));
        }
        return jsonPrimitive;
    }
}
